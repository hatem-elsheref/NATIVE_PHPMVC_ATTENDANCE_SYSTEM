
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="track-panel">
                <h3>Edit Track</h3>
            </div>
        </div>
        <div class="col-xs-12 trackss">
            <div class="col-xs-12 add-track">
                <form autocomplete="off" novalidate>
                    <div class="col-xs-6 tracks-left-side">
                        <div class="form-group">
                            <label><span class="text-dark">Track Name</span></label>
                            <input type="text" class="form-control"  placeholder="Track Name">
                        </div>
                        <div class="form-group">
                            <label><span class="text-dark">Instructor</span></label>
                            <select class="form-control">
                                <option selected disabled>Select Instructor</option>
                                <option>Ahmed Mohamed</option>
                                <option>Hatem Mohamed</option>
                                <option>Ali Youssry</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label><span class="text-dark">Cost</span></label>
                            <input type="text" class="form-control"  placeholder="Track Cost">
                        </div>

                    </div>
                    <div class="col-xs-6 tracks-right-side">
                        <div class="form-group">
                            <label><span class="text-dark">Place</span></label>
                            <input type="text" class="form-control"  placeholder="Track Place">
                        </div>

                        <label><span class="text-dark">Days</label>
                        <div class="tracks-choice">
                            <div class="row">
                                <div class="track-item">
                                    <div class="funkyradio-danger">
                                        <div class="funkyradio-md">
                                            <input type="checkbox" name="radio-md" id="radio-md-2" value="1">
                                            <label for="radio-md-2">Saterday</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="track-item">
                                    <div class="funkyradio-danger">
                                        <div class="funkyradio-md">
                                            <input type="checkbox" name="radio-md" id="radio-md-3" value="1">
                                            <label for="radio-md-3">Sunday</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="track-item">
                                    <div class="funkyradio-danger">
                                        <div class="funkyradio-md">
                                            <input type="checkbox" name="radio-md" id="radio-md-4" value="1">
                                            <label for="radio-md-4">Monday</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="track-item">
                                    <div class="funkyradio-danger">
                                        <div class="funkyradio-md">
                                            <input type="checkbox" name="radio-md" id="radio-md-5" value="1">
                                            <label for="radio-md-5">Tuesday</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="track-item">
                                    <div class="funkyradio-danger">
                                        <div class="funkyradio-md">
                                            <input type="checkbox" name="radio-md" id="radio-md-6" value="1">
                                            <label for="radio-md-6">Thursday</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="track-item">
                                    <div class="funkyradio-danger">
                                        <div class="funkyradio-md">
                                            <input type="checkbox" name="radio-md" id="radio-md-1" value="1">
                                            <label for="radio-md-1">Wensday</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary form-control save-add-track">Save</button>
                        </div>
                    </div>


                </form>
            </div>

        </div>

    </div>
</div>
<!-- /#page-content-wrapper -->

<div class="modal fade" id="modal-of-edit-track" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel">Edit Track</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="modal-body">
                <form autocomplete="off" novalidate>
                    <div class="form-group">
                        <label><span class="text-dark">Track Name</span></label>
                        <input type="text" class="form-control"  placeholder="Track Name">
                    </div>
                    <div class="form-group">
                        <label><span class="text-dark">Instructor</span></label>
                        <select class="form-control">
                            <option selected disabled>Select Instructor</option>
                            <option>Ahmed Mohamed</option>
                            <option>Hatem Mohamed</option>
                            <option>Ali Youssry</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label><span class="text-dark">Cost</span></label>
                        <input type="text" class="form-control"  placeholder="Track Cost">
                    </div>
                    <div class="form-group">
                        <label><span class="text-dark">Place</span></label>
                        <input type="text" class="form-control"  placeholder="Track Place">
                    </div>

                    <label><span class="text-dark">Days</label>
                    <div class="tracks-choice">
                        <div class="row">
                            <div class="track-item">
                                <div class="funkyradio-danger">
                                    <div class="funkyradio-md">
                                        <input type="checkbox" name="radio-md" id="radio-md-2" value="1">
                                        <label for="radio-md-2">Saterday</label>
                                    </div>
                                </div>
                            </div>
                            <div class="track-item">
                                <div class="funkyradio-danger">
                                    <div class="funkyradio-md">
                                        <input type="checkbox" name="radio-md" id="radio-md-3" value="1">
                                        <label for="radio-md-3">Sunday</label>
                                    </div>
                                </div>
                            </div>
                            <div class="track-item">
                                <div class="funkyradio-danger">
                                    <div class="funkyradio-md">
                                        <input type="checkbox" name="radio-md" id="radio-md-4" value="1">
                                        <label for="radio-md-4">Monday</label>
                                    </div>
                                </div>
                            </div>
                            <div class="track-item">
                                <div class="funkyradio-danger">
                                    <div class="funkyradio-md">
                                        <input type="checkbox" name="radio-md" id="radio-md-5" value="1">
                                        <label for="radio-md-5">Tuesday</label>
                                    </div>
                                </div>
                            </div>
                            <div class="track-item">
                                <div class="funkyradio-danger">
                                    <div class="funkyradio-md">
                                        <input type="checkbox" name="radio-md" id="radio-md-6" value="1">
                                        <label for="radio-md-6">Thursday</label>
                                    </div>
                                </div>
                            </div>
                            <div class="track-item">
                                <div class="funkyradio-danger">
                                    <div class="funkyradio-md">
                                        <input type="checkbox" name="radio-md" id="radio-md-1" value="1">
                                        <label for="radio-md-1">Wensday</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-success">Update</button>
            </div>
        </div>
    </div>
</div>