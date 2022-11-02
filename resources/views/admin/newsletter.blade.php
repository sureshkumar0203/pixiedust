@extends('admin.layouts.master')
@section('title','Newsletter Email')
@section('content')
<script type="text/javascript" src="{{ asset('public/admin/ckeditor/ckeditor.js') }}"></script>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>News Letter</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">News Letter</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="card card-primary">                       
                        <div class="card-header">
                            <h3 class="card-title">News Letter</h3>
                        </div>               

                        @include('admin.includes.msg')

                        {!! Form::open(['url' => 'send-newsletter','data-toggle'=>"validator",'role' => 'form', 'class' =>'validate', 'name' => 'send-newsletter', 'id' => 'send-newsletter','files'=>true, 'autocomplete' => 'off']) !!}
                        <div class="card-body all_chk">

                            <div class="form-group">
                                <label>
                                    <input type="checkbox" id="checkAll">
                                    <strong>All subscribed email address.</strong> <span style="float: right;"><strong>Action</strong></span>
                                </label> 
                                  <hr>
                                  <div style="height: 130px; overflow-y: scroll; padding-right:10px;">
                                @foreach($getNewsLetSubEmails as $getNewsLetSubEmail)
                                
                                
                                <label id="email_list_{{ $getNewsLetSubEmail->id }}">
                                    {!! Form::checkbox('email_check[]',$getNewsLetSubEmail->email,null, ['id'=>'email_check','class'=>'pull-left mar-top12']) !!}
                                    @if ($errors->has('email_check'))
                                    <span class="help-block">                                    
                                        <strong>{{ $errors->first('email_check') }}</strong>                                
                                    </span> 
                                    @endif        
                                    <div class="help-block with-errors"></div>
                                    <span class="e-id">{{ $getNewsLetSubEmail->email }}</span>
                                    <button style="float: right;" class="btn btn-danger btn-sm btn-small" onclick="return DeleteSubscribeEmail({{ $getNewsLetSubEmail->id }})"><i class="fa fa-trash-o" aria-hidden="true"></i></button>                                   
                                </label> 
                                
                                 
                                <div class="clearfix"></div>                               
                                <hr>
                                
                                @endforeach
                                
                                </div>
                            </div>

                            <div class="form-group">                                    
                                <label for="title">Description</label>                                    
                                {!! Form::textarea('description',$getEmailTemplate->content,['id' => 'description','required', 'class'=>'form-control ckeditor']) !!}

                                @if ($errors->has('description'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('description') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>   
                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            {{ Form::submit('Send Email', ['class' => 'btn btn-success']) }}
                            <a href="{{ url('admin/home') }}" class="btn btn-warning">Back</a> 
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
@stop
@push('script')
<script>
    $(document).ready(function () {
    $('#checkAll').on('click', function () {
    $("input:checkbox").prop('checked', $(this).prop("checked"));
    });
    });
    function DeleteSubscribeEmail(id){
    var del = confirm("Are you sure you want to delete this subscribed email?");
    if (del == true){
    $.ajax({
    type:'POST',
            url: "{{ url('/delete-sub-email') }}",
            data:{'id':id},
            success:function(response){
            console.log(response);
            if (response.status == "success"){
            $("#email_list_" + id).remove();
            } else{
            alert("Error Occuered.");
            }
            }
    });
    }
    return false;
    }

</script>


@endpush