@extends('admin.layouts.master')
@section('title','Edit CMS Page')
@section('content')

<script type="text/javascript" src="{{ asset('public/admin/ckeditor/ckeditor.js') }}"></script>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Edit CMS Page</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Edit CMS Page</li>
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
                            <h3 class="card-title">Edit CMS Page</h3>
                        </div>               
                        {!! Form::model($cmsPage, ['method' => 'PATCH','route' => ['pages.update', $cmsPage->id],'data-toggle'=>"validator", 'role' => 'form','files'=>true,'autocomplete'=>'off']) !!}
                        <div class="card-body">
                            <div class="form-group">                                    
                                <label for="title">Title</label>                                    
                                {!! Form::text('title',$cmsPage->title,['id' => 'title','required', 'class'=>'form-control']) !!}
                                @if ($errors->has('title'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('title') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>                            
                            <div class="form-group">                                    
                                <label for="title">Description</label>                                    
                                {!! Form::textarea('description',$cmsPage->description,['id' => 'description','required', 'class'=>'form-control ckeditor']) !!}
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
                            @if($cmsPage->id!=8)
                            <div class="form-group">                                    
                                <label for="image">Upload Image</label>                                    
                                {!! Form::file('image', ['id' => 'image','onchange'=>"return imageExtValidation('image')", 'class'=>'form-control','accept'=>"jpg,png"]) !!}
                                @if ($errors->has('image'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('image') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>  
                            <span style="color: red;">Note:Please upload 400*400 image for better quality.Image extension should be .jpeg.jpg.png.gif only</span>
                            <div class="clearfix"></div>
                            @if($cmsPage->image!=NULL)
                            <div id="cms_img_disp">
                             <a href="javascript:void(0);" id="{{ $cmsPage->id }}" class="text-center" style="display:inline-block;"><img width="100px" src="{{ asset('public/images/'.$cmsPage->image) }}" />
                             <br>
                             <i class="fa fa-trash" onclick="return deleteCmsImage({{ $cmsPage->id }});"></i></a>
                            </div>
                            @endif
                            @endif
                            <div class="form-group">                                    
                                <label for="meta_title">Meta Title</label>                                    
                                {!! Form::text('meta_title',$cmsPage->meta_title,['id' => 'meta_title','required', 'class'=>'form-control']) !!}
                                @if ($errors->has('meta_title'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('meta_title') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">                                    
                                <label for="meta_keywords">Meta Keywords</label>                                    
                                {!! Form::text('meta_keywords',$cmsPage->meta_keywords,['id' => 'meta_keywords','required', 'class'=>'form-control']) !!}
                                @if ($errors->has('meta_keywords'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('meta_keywords') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">                                    
                                <label for="meta_description">Meta Keywords</label>                                    
                                {!! Form::textarea('meta_description',$cmsPage->meta_description,['rows'=>3,'id' => 'meta_description','required', 'class'=>'form-control']) !!}
                                @if ($errors->has('meta_description'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('meta_description') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>

                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            {{ Form::submit('Update', ['class' => 'btn btn-success']) }}
                            <a href="{{ url('admin/pages') }}" class="btn btn-warning">Back</a> 
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
function deleteCmsImage(ph_id) {
	if (ph_id) {
		$.ajax({
		type: "POST",
		url: "{{ url('delete-cms-photo') }}",
		data: {'ph_id': ph_id},
		success: function (response) {
			if (response) {
				$('#cms_img_disp').hide();
			} 
		}
	})
	}
}
</script>
@endpush