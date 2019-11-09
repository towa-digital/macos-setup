PROJECTS_DIR=~/dev

# jump to theme directory
function theme () {
    cd $PROJECTS_DIR/$1/web/app/themes/towa-theme
}

# open projectin vs code
function dev() {
    project=$1;
    code $PROJECTS_DIR/${project}
}

function devopen () {
    project=$1;
    code $PROJECTS_DIR/${project} && cd $PROJECTS_DIR/${project}/web/app/themes/towa-theme
}

# jump to theme directory and run yarn watch
function devrun () {
    project=$1;
    cd $PROJECTS_DIR/${project}/web/app/themes/towa-theme && yarn watch
}

## Homestead Stuff ##
function homestead() {
    ( cd ~/Homestead && vagrant $* )
}

function weather() {
    city="$1"

    if [ -z "$city" ]; then
        city="Vienna"
    fi

    eval "curl http://wttr.in/${city}"
}

function dp() {
    displayplacer "id:2C836D2C-096C-E130-6AE8-74775BD9012D res:1440x900 color_depth:8 scaling:on origin:(0,0) degree:0" "id:EE005615-F390-BF44-764F-197C8E5830A5 res:1920x1080 hz:60 color_depth:8 scaling:off origin:(-1294,-1080) degree:0" "id:312E6558-2659-80CC-FE34-F7958B96AF26 res:1920x1080 hz:60 color_depth:8 scaling:off origin:(626,-1080) degree:0"
}