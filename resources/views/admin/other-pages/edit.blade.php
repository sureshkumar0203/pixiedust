@extends('admin.layouts.master')
@section('title','Edit Other CMS Page')
@section('content') 
<script type="text/javascript" src="{{ asset('public/admin/ckeditor/ckeditor.js') }}"></script>
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Edit Other CMS Page</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
            <li class="breadcrumb-item active">Edit Other CMS Page</li>
          </ol>
        </div>
      </div>
    </div>
    <!-- /.container-fluid --> 
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
              <h3 class="card-title">Edit Other CMS Page</h3>
            </div>
            {!! Form::model($op_info, ['method' => 'PATCH','route' => ['other-pages.update', $op_info->id],'data-toggle'=>"validator", 'role' => 'form','enctype' => 'multipart/form-data','files'=>true,'autocomplete'=>'off']) !!}
            <div class="card-body">
              <div class="form-group">
                <label for="title">Page Title</label>
                {!! Form::select('cms_page',array('' => '--Select--','Psychic Readers' => 'Psychic Readers', 'Massage Therapy' => 'Massage Therapy','About Symbols' => 'About Symbols', 'Blog' => 'Blog'), $op_info->cms_page,array('id' => 'cms_page','required','class'=>'form-control','onChange' => 'showMetaDiv(this.val);')) !!}
                @if ($errors->has('cms_page')) <span class="help-block"> <strong>{{ $errors->first('cms_page') }}</strong> </span> @endif
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <label for="title">Title</label>
                {!! Form::text('title',$op_info->title,['id' => 'title','required', 'class'=>'form-control']) !!}
                @if ($errors->has('title')) <span class="help-block"> <strong>{{ $errors->first('title') }}</strong> </span> @endif
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <label for="title">Description</label>
                {!! Form::textarea('description',$op_info->description,['id' => 'description','required', 'class'=>'form-control ckeditor']) !!} 
                <script type="text/javascript">
                    CKEDITOR.replace('description', {
                        filebrowserUploadUrl: '{{ url("public/admin/ckeditor/filemanager/connectors/php/upload.php")}}'
                    });
                </script> 
                @if ($errors->has('description')) <span class="help-block"> <strong>{{ $errors->first('description') }}</strong> </span> @endif
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <label for="">Upload Image / Video</label>
                {!! Form::file('img_vid', ['id' => 'img_vid','onchange'=>"", 'class'=>'form-control','accept'=>"jpg,png,mp4,mov"]) !!}
                @if ($errors->has('img_vid')) <span class="help-block"> <strong>{{ $errors->first('img_vid') }}</strong> </span> @endif
                <div class="help-block with-errors"></div>
                <span style="color:#F00;">Note : Upload only jpg,jpeg,png,mp4,mov file format.</span> </div>
              <div class="clearfix"></div>
              <?php
                $img_name = $op_info->img_vid;
                $img_ary = explode('.',$img_name);
                $img_ext = strtolower(array_pop($img_ary));
              ?>
              <div id="cms_img_disp">
                @if($op_info->img_vid!=NULL && $img_ext=='mp4')
                <video width="30%" controls>
                  <source src="{{ asset('public/images/img-vid/'.$op_info->img_vid) }}">
                </video>
                <br>
                <i class="fa fa-trash" onclick="return deleteCmsImgVid({{ $op_info->id }});"></i>               @endif
                
                 @if($op_info->img_vid!=NULL && $img_ext=='mov')
                  <video width="30%" src="{{ asset('public/images/img-vid/'.$op_info->img_vid) }}" controls></video>
                  <br />
                  <i class="fa fa-trash" onclick="return deleteCmsImgVid({{ $op_info->id }});"></i>
                @endif
                
                @if($op_info->img_vid!=NULL && $img_ext!='mp4' && $img_ext!='mov')
                <a href="javascript:void(0);" id="{{ $op_info->id }}" class="text-center" style="display:inline-block;"><img width="100px" src="{{ asset('public/images/img-vid/'.$op_info->img_vid) }}" /> <br>
                <i class="fa fa-trash" onclick="return deleteCmsImgVid({{ $op_info->id }});"></i></a>                 @endif
              </div>
            
 
                
              <div id="meta_div">
                  <div class="form-group">
                    <label for="meta_title">Meta Title</label>
                    {!! Form::text('meta_title',$op_info->meta_title,['id' => 'meta_title','required', 'class'=>'form-control']) !!}
                    @if ($errors->has('meta_title')) <span class="help-block"> <strong>{{ $errors->first('meta_title') }}</strong> </span> @endif
                    <div class="help-block with-errors"></div>
                  </div>
                  <div class="form-group">
                    <label for="meta_keywords">Meta Keywords</label>
                    {!! Form::text('meta_keywords',$op_info->meta_keywords,['id' => 'meta_keywords','class'=>'form-control']) !!}
                    @if ($errors->has('meta_keywords')) <span class="help-block"> <strong>{{ $errors->first('meta_keywords') }}</strong> </span> @endif
                    <div class="help-block with-errors"></div>
                  </div>
                  <div class="form-group">
                    <label for="meta_description">Meta Description</label>
                    {!! Form::textarea('meta_description',$op_info->meta_description,['rows'=>3,'id' => 'meta_description','class'=>'form-control']) !!}
                    @if ($errors->has('meta_description')) <span class="help-block"> <strong>{{ $errors->first('meta_description') }}</strong> </span> @endif
                    <div class="help-block with-errors"></div>
                  </div>
              </div>
            </div>
            <!-- /.card-body -->
            
            <div class="card-footer"> {{ Form::submit('Update', ['class' => 'btn btn-success']) }} <a href="{{ url('admin/other-pages') }}" class="btn btn-warning">Back</a> </div>
            {!! Form::close() !!} </div>
        </div>
      </div>
      <!-- /.row --> 
    </div>
    <!-- /.container-fluid --> 
  </section>
  <!-- /.content --> 
</div>
@stop
@push('script') 
<script>
function deleteCmsImgVid(pv_id) {
    if (pv_id) {
        $.ajax({
        type: "POST",
        url: "{{ url('delete-cms-photo-video') }}",
        data: {'pv_id': pv_id},
        success: function (response) {
            if (response) {
                
                $('#cms_img_disp').hide();
            } 
        }
    })
    }
}

var cmsPage = $('#cms_page').val();
if(cmsPage == 'Blog'){
    $('#meta_div').css('display', 'block');
    $('#meta_title').prop('required',true);
}else{
    $('#meta_div').css('display', 'none');
    $('#meta_title').removeAttr('required');
}

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