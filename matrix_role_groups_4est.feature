    Scenario Outline: Can upload new version
       Given we log in as "<login>"
        when we click "Assets" dashboard tile
        then the page has "Assets" title
        when click on "Grid" icon
        then view type "Grid" is selected
        when we click on the first grid item
        then the page has "Viewing" title
        when we click in action button
        then we can see active elements: "Add New Version, Edit, Detach" on action button section
        when we click in action button
        when we click in "Add new version" button on action button section
        then the page has "Upload New Version" title
        when put file "TEST_FILE_JPG__0028.jpg" to upload
         and we submit upload form by clicking "Submit" button
        then we are redirected to "/assets/view/" page

    Examples: Users
    | caseid | login                                       |
    | 662939 | fido.personas+campaign_manager@gmail.com    |

    Scenario Outline: Can edit metadata
       Given we log in as "<login>"
        when we click "Assets" dashboard tile
        then the page has "Assets" title
        when click on "Grid" icon
        then view type "Grid" is selected
        when we click on the first grid item
        then the page has "Viewing" title
         and "Metadata" tab is selected
        then the page has "Viewing" title
        when we click in action button
        then we can see active elements: "Add New Version, Edit, Detach" on action button section
        when we click in action button
         and we click in "Edit" button on action button section
         and we click into "Live Date" date field
         and we clear the text field
         and we input "2025-12-12"
         and we click into "Campaign / Activity Name" text field
         and we clear the text field
         and we input "automated test was here"
         and we click into "Keywords" textarea field
         and we clear the text field
         and we input "automated test was here"
         and we click on "Save" bottom bar button save
        then the page has "Viewing" title

    Examples: Users
    | caseid | login                                       |
    | 662942 | fido.personas+campaign_manager@gmail.com    |

    Scenario Outline: Has access to Activity Log tab
       Given we log in as "<login>"
        when we click "Assets" dashboard tile
        then the page has "Assets" title
        when click on "Grid" icon
        then view type "Grid" is selected
        when we click on the first grid item
        then the page has "Viewing" title
        when we open "Activity Log" tab
        then "Activity Log" tab is selected
         and the page has "Activity Log" title
         and the page has a list with "Type, Field, From, To, User, When, Delegate" columns
         and we click Back button
         and the page has "Assets" title

    Examples: Users
    | caseid | login                                       |
    | 662940 | fido.personas+campaign_manager@gmail.com    |

    Scenario Outline: Can remove assets
       Given we log in as "<login>"
        when we click "Assets" dashboard tile
        then the page has "Assets" title
        when click on "Grid" icon
        then view type "Grid" is selected
        when we click on the first grid item
        then the page has "Viewing" title
         and "Metadata" tab is selected
        then the page has "Viewing" title
        when we click in action button
        then we can see active elements: "Add New Version, Edit, Detach" on action button section
        when we click in action button
        when we click in "Detach" button on action button section
        then the page has "Detach Asset" title
        when we click on "Detach" bottom bar button save
        then we are redirected to "/dam/assets/" page

    Examples: Users
    | caseid | login                                       |
    | 662941 | fido.personas+campaign_manager@gmail.com    |

    Scenario Outline: Can ingest production files
       Given we log in as "<login>"
        when we click "Assets" dashboard tile
        then the page has "Assets" title
        when click on "Grid" icon
        then view type "Grid" is selected
        when we click on the first grid item
        then the page has "Viewing" title
         and "Metadata" tab is selected
        then the page has "Viewing" title
        when we open "Production Files" tab
        then "Production Files" tab is selected
        when we click on add file button in section "Production Files"
        then the page has "Add New File" title
         and the page has "Add New File" header
        when put file "TEST_FILE_TIF__0054.tif" to upload
         and we submit upload form by clicking "Upload" button
         and we click on asset list element named "TEST_FILE_TIF__0054" in section "Production Files"

    Examples: Users
    | caseid | login                                       |
    | 662943 | fido.personas+campaign_manager@gmail.com    |

    Scenario Outline: Can download production files
       Given we log in as "<login>"
        when we click "Assets" dashboard tile
        then the page has "Assets" title
        when click on "Grid" icon
        then view type "Grid" is selected
        when we click on the first grid item
        then the page has "Viewing" title
         and "Metadata" tab is selected
        then the page has "Viewing" title
        when we open "Production Files" tab
        then "Production Files" tab is selected
        when we click on add file button in section "Production Files"
        then the page has "Add New File" title
         and the page has "Add New File" header
        when put file "TEST_FILE_TIF__0054.tif" to upload
         and we submit upload form by clicking "Upload" button
         and we click on asset list element named "TEST_FILE_TIF__0054" in section "Production Files"
         and we show fullscreen preview of "image" file and verify it
        then we click on download icon in "TEST_FILE_TIF__0054.tif" asset
         and the page has "Viewing" title

    Examples: Users
    | caseid | login                                       |
    | 662944 | fido.personas+campaign_manager@gmail.com    |

    Scenario Outline: Can transcode items
       Given we log in as "<login>"
        when we click "Assets" dashboard tile
        then the page has "Assets" title
        when click on "Grid" icon
        then view type "Grid" is selected
        when we click on the first grid item
        then the page has "Viewing" title
         and "Metadata" tab is selected
        then the page has "Viewing" title
        when we open "Transcoding" tab
        then "Transcoding" tab is selected
         and the page has "Transcodes" title
         and we pick "tiff" from "Select Format " select
         and we click on transcode button
         and we pick "jpeg" from "Select Format " select
         and we click on transcode button
         and we pick "gif" from "Select Format " select
         and we click on transcode button
         and we pick "bmp" from "Select Format " select
         and we click on transcode button
         and the page has "Transcodes" title
         and we click Back button
         and the page has "Assets" title

    Examples: Users
    | caseid | login                                       |
    | 662945 | fido.personas+campaign_manager@gmail.com    |

    Scenario Outline: Has access to the Downloads tab
       Given we log in as "<login>"
        when we click "Assets" dashboard tile
        then the page has "Assets" title
        when click on "Grid" icon
        then view type "Grid" is selected
        when we click on the first grid item
        then the page has "Viewing" title
         and "Metadata" tab is selected
         and the page has "Viewing" title
        when we open "Downloads" tab
        then "Downloads" tab is selected
         and the page has "Downloads" title

    Examples: Users
    | caseid | login                                       |
    | 662946 | fido.personas+campaign_manager@gmail.com    |
