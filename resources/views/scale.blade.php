@extends('layouts.app')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<style type="text/css">
    .bg-custom {
    background-color: #d66c12!important;
}
.custom-text { color:#005077 }
body {background-color: black !important}
</style>
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="col-md-12 d-flex justify-content-center">
                <div class="form-group">
                    <form action="view-scale" method="POST">
                        @csrf
                        <label style="font-size: 20px;color: white;">Academic Year</label>
                        <select class="form-control" name="year">
                                @if(isset($years))
                                    @foreach($years as $year)
                                        <option value="{{ $year->period }}">{{ $year->year }}</option>
                                    @endforeach
                                @endif
                        </select>

                        <center><button style="margin-top: 20px" type="submit" class="btn btn-success">Search</button></center>            
                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-header" style="background-color:#FF9683">Scaling</div>
                    
                <div class="card-body">
                    <table id="example" class="display" style="width:100%">
                        <thead>
                            <th>Teacher</th>
                            <th>Scale</th>
                        </thead>
                        <tbody>
                            @if (isset($scalingArray))
                                @foreach($scalingArray as $key => $value)
                                    <tr>
                                        <td>{{ $key }}</td>
                                        <td>{{ $scalingArray[$key] }}</td>
                                    </tr>
                                @endforeach    
                            @endif                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts')
    <script type="text/javascript">
        $(document).ready(function() {
            $('#example').DataTable();
        });
    </script>
@endsection