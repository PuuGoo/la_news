@extends('admin.admin_dashboard')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style type="text/css">
    .form-check-label {
        text-transform: capitalize;
    }
</style>

<div class="content">

    <!-- Start Content-->
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">

                            <li class="breadcrumb-item active">Edit Role In Permission</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Edit Role In Permission</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <!-- Form row -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <form method="post" action="{{ route('role.permission.update',$role->id) }}">
                            @csrf


                            <div class="row">
                                <div class="form-group col-md-6 mb-3">
                                    <label for="inputEmail4" class="form-label">All Roles </label>
                                    <h4>{{ $role->name }}</h4>
                                </div>

                            </div>



                            <div class="form-check mb-2 form-check-primary">
                                <input class="form-check-input" type="checkbox" value="" id="customcheckall">
                                <label class="form-check-label" for="customcheckall">Permission All</label>
                            </div>

                            <hr>

                            @foreach($permission_groups as $key => $group)
                            <div class="row">
                                <div class="col-3">

                                    @php
                                    $permissions = App\Models\User::getpermissionByGroupName($group->group_name);
                                    @endphp

                                    <div class="form-check mb-2 form-check-primary">
                                        <input class="form-check-input" type="checkbox" value="" id="customcheckgroup{{$key}}" {{ App\Models\User::roleHasPermissions($role, $permissions) ? 'checked' : ''  }}>
                                        <label class="form-check-label" for="customcheckgroup{{$key}}">{{ $group->group_name }}</label>
                                    </div>


                                </div><!--  // End col 3  -->


                                <div class="col-9">




                                    @foreach($permissions as $permission)
                                    <div class="form-check mb-2 form-check-primary">
                                        <input class="form-check-input" name="permission[]" {{ $role->hasPermissionTo($permission->name) ? 'checked' : '' }} type="checkbox" value="{{ $permission->id }}" id="customcheck{{ $permission->id }}">
                                        <label class="form-check-label" for="customcheck{{ $permission->id }}">{{ $permission->name }}</label>
                                    </div>
                                    @endforeach
                                    <br>

                                </div><!--  // End col 9  -->

                            </div> <!-- // End Row  -->
                            @endforeach








                            <button type="submit" class="btn btn-primary waves-effect waves-light">Save Changes</button>

                        </form>

                    </div> <!-- end card-body -->
                </div> <!-- end card-->
            </div> <!-- end col -->
        </div>
        <!-- end row -->



    </div> <!-- container -->

</div> <!-- content -->


<script type="text/javascript">
    $('#customcheckall').click(function() {
        if ($(this).is(':checked')) {
            $('input[type = checkbox]').prop('checked', true);
        } else {
            $('input[type = checkbox]').prop('checked', false);
        }
    });
</script>



@endsection