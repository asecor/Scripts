psexec \\remoteMachine -u adminuser -p password query session
psexec \\remoteMachine -u $username -p $password -i $id cmd /c "net use x: \\server\share"
