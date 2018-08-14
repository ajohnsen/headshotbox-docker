PARAMS="";

if [ -z $HS_PORT ];
then
    echo "port not set"
else
    echo "port is set"
    PARAMS=$PARAMS" --port "$HS_PORT
fi

if [ -z $STEAM_ID ];
then
    echo "steamid not set"
else
    echo "steamid is set"
    PARAMS=$PARAMS" --admin-steamid "$STEAM_ID
fi

if [ -z $OPENID_REALM ];
then
    echo "openid not set"
else
    echo "openid is set"
    PARAMS=$PARAMS" --openid-realm "$OPENID_REALM
fi


echo $PARAMS;

java -jar hsbox-$HEADSHOTBOX_VERSION-standalone.jar $PARAMS