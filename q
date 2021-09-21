   {% load static %}
    <div class="container pt-5">
        <div class="container">
            <h1>Targets</h1>
        </div>
        <main role="main" class="inner cover">
            <div class="container">Time to add a new target? Add it by pressing here
                <!-- Button trigger modal -->
                <div class="btn-group btn-group-sm custom-switch px-1" role="group">
                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#addTarget">
                        Add
                    </button>
                </div>
            </div>
            <br>
            <br>

            <!-- Modal AddTarget -->
            <div class="modal fade" id="addTarget" data-backdrop="static" data-keyboard="false" tabindex="-1"
                 aria-labelledby="addTargetLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title text-tint-black" id="addTargetLabel">Add target:</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body m-2">
                            <form method="POST" id="target-create">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Target name:</label>
                                    <input type="text" class="form-control" id="targetName" name="targetName"
                                           aria-describedby="emailHelp" placeholder="Enter target's name">
                                </div>
                                <div class="form-group mt-3">
                                    <label for="domainList">Enter domain list</label>
                                    <textarea class="form-control" id="domainList" rows="3"
                                              name="domainList"></textarea>
                                </div>
                                <div class="form-group mt-3">
                                    <label for="exclusionsList">Exclusions</label>
                                    <textarea class="form-control" id="exclusionsList" rows="3"
                                              name="exclusionsList"></textarea>
                                </div>
                                <div class="form-group mt-3">
                                    <label for="additionalInfo">Additional Info</label>
                                    <textarea class="form-control" id="exclusionsList" rows="3"
                                              name="exclusionsList"></textarea>
                                </div>
                                <div class="form-check mt-3">
                                    <input type="checkbox" class="form-check-input" id="superThrottle">
                                    <label class="form-check-label" for="super_throttle" name="super_throttle">Super
                                        Throttle</label>
                                </div>
                                <div class="modal-footer mt-3">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-warning" value="submit">Upload</button>
                                </div>
                                {% csrf_token %}
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
