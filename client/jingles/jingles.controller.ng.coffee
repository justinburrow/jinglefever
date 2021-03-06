'use strict'

angular.module 'jinglefever'
.controller 'jinglesCtrl', ($scope, jinglesFactory, $stateParams, $state, $rootScope) ->
  $scope.activeTags = []
  $scope.tagMatch = ''
  $rootScope.home = false
  
  jinglesFactory.getTracks (tracks) ->
    $scope.allTracks =  tracks
    tags =[]
    #make array called tagList, push unique values for genre and tag_list
    for track in $scope.allTracks
      tagList = []
      if tags.indexOf(track.genre) == -1
        tags.push(track.genre)
      if track.tag_list
        tagList = track.tag_list.match(/"(?:\\"|\\\\|[^"])*"|\S+/g);
      for tag in tagList
          if tags.indexOf(tag) == -1
            tag = tag.replace(/"/g, "")
            tags.push(tag)
      $scope.tags = tags

  #activate and deactivate tags into activeTags array
  $scope.tagCheck = (tagValue) ->
    if $rootScope.activeTags.indexOf(tagValue) == -1
      $rootScope.activeTags.push(tagValue)
    else
      activeTagLoc = $rootScope.activeTags.indexOf(tagValue)
      $rootScope.activeTags.splice(activeTagLoc, 1)
  
  #filter allTracks by activeTags in both genre and tag_list properties
  #TODO: should DRY up some of the .match and .replace functions
  $scope.taggedGenreTracks = (value, index) ->
    count = 0
    if value.tag_list
      trackTags = value.tag_list.match(/"(?:\\"|\\\\|[^"])*"|\S+/g);
      for trackTag in trackTags
        trackTag = trackTag.replace(/"/g, "")
        if $rootScope.activeTags.indexOf(trackTag) != -1
          count++
    $rootScope.activeTags.indexOf(value.genre) != -1 || count != 0
    
