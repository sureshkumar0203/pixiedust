@extends('admin.layouts.master')
@section('title','Add Other CMS Page')
@section('content')

<script type="text/javascript" src="{{ asset('public/admin/ckeditor/ckeditor.js') }}"></script>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Add Other CMS Page</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Add Other CMS Page</li>
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
                            <h3 class="card-title">ADD Other CMS Page</h3>
                        </div>               
                        {{ Form::open(['route' => 'other-pages.store','data-toggle'=>"validator", 'role' => 'form', 'class' =>'validate', 'name' => 'add_oth_cms', 'id' => 'add_oth_cms','enctype' => 'multipart/form-data','files'=>true, 'autocomplete' => 'off']) }}
                        <div class="card-body">
                        
                         
                         	<div class="form-group">                                    
                                <label for="title">Page Title</label>                                    
                                {!! Form::select('cms_page',array('' => '--Select--','Psychic Readers' => 'Psychic Readers', 'Massage Therapy' => 'Massage Therapy','About Symbols' => 'About Symbols', 'Blog' => 'Blog'), null,array('id' => 'cms_page','required','class'=>'form-control','onChange' => 'showMetaDiv(this.val);')) !!}
                                @if ($errors->has('cms_page'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('cms_page') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>
                            
                         
                            <div class="form-group">                                    
                                <label for="title">Title</label>                                    
                                {!! Form::text('title',old('title'),['id' => 'title','required', 'class'=>'form-control']) !!}
                                @if ($errors->has('title'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('title') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>                            
                            <div class="form-group">                                    
                                <label for="title">Description</label>                                    
                                {!! Form::textarea('description',''old('description')'',['id' => 'description','required', 'class'=>'form-control ckeditor']) !!}


								<script type="text/javascript">
                                CKEDITOR.replace('description', {
                                filebrowserUploadUrl: '{{ url("public/admin/ckeditor/filemanager/connectors/php/upload.php")}}'
                                });
                                </script>
                                @if ($errors->has('description'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('description') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>
                            
                            
                            <div class="form-group">                                    
                                <label for="">Upload Image / Video</label>                                    
                                 {!! Form::file('img_vid', ['id' => 'img_vid','onchange'=>"", 'class'=>'form-control','accept'=>"jpg,png,mp4,mov"]) !!}
                                @if ($errors->has('img_vid'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('img_vid') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                                <span style="color:#F00;">Note : Upload only jpg,jpeg,png,mp4,mov file format.</span>
                            </div>
                            
                            
                           <div id="meta_div" style="display:none;">
                           <div class="form-group">                                    
                                <label for="meta_title">Meta Title</label>                                    
                                {!! Form::text('meta_title',old('meta_title'),['id' => 'meta_title', 'class'=>'form-control']) !!}
                                @if ($errors->has('meta_title'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('meta_title') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>
                            
                            <div class="form-group">                                    
                                <label for="meta_keywords">Meta Keywords</label>                                    
                                {!! Form::text('meta_keywords',old('meta_keywords'),['id' => 'meta_keywords', 'class'=>'form-control']) !!}
                                @if ($errors->has('meta_keywords'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('meta_keywords') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>
                            
                            <div class="form-group">                                    
                                <label for="meta_description">Meta Description</label>                                    
                                {!! Form::textarea('meta_description',old('meta_description'),['rows'=>3,'id' => 'meta_description','class'=>'form-control']) !!}
                                @if ($errors->has('meta_description'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('meta_description') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>
                            
                            </div>

                        </div>

                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            {{ Form::submit('Submit', ['class' => 'btn btn-success']) }}
                            <a href="{{ url('admin/other-pages') }}" class="btn btn-warning">Back</a> 
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
function showMetaDiv() {
	if($('#cms_page').val()=='Blog'){
		$('#meta_div').css('display', 'block');
        $('#meta_title').prop('required',true);
	}else{
		$('#meta_div').css('display', 'none');
        $('#meta_title').removeAttr('required');
	}
}
</script>


@endpush