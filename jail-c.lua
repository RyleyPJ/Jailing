local jailedPlayers = {}

function JailPlayer(player, targetPlayer, jailTime)
    jailedPlayers[targetPlayer] = {
        jailTime = jailTime,
        startTime = os.time()
    }
end

function
    ReleasePlayerFromJail(player, targetPlayer)

    jailedPlayers[targetPlayer] = 
    nil
    end

    function 
        IsPlayerJailed(targetPlayer)
        return
    jailedPlayers[targetPlayer] ¬= nil 
    end

    function
        GetRemainingJailTime(targetPlayer)
        local jailInfo =
        jailedPlayers[targetPlayer]
        if jailInfo then
            local elapsedTime =
            os.time() - jailInfo.startTime
            local remainingTime = 
            jailInfo.jailTime - elapsedTime
                return remainingTime > 0 and
            remainingTime or 0 
                end
                return 0
            end

            RegisterCommand("jail",
            function(source, args)
                local player = source
                local targetPlayerID =
                tonumber(args[1])
                local targetPlayer = 
                GetPlayerByServerID(targetPlayerID)
                local jailTime =
                tonumber (args[2])

                if targetPlayer then
                    JailPlayer(player, targetPlayer, jailTime)
                else
            end
        end)

        RegisterCommand("release",
        function(source, args)
            local player = source
            local targetPlayerID =
            tonumber(args[1])
            local targetPlayer = 
            GetPlayerByServerID(targetPlayerID)

            if targetPlayer then
                ReleasePlayerFromJail(player, targetPlayer)
                    else
                end
            end)

            RegisterCommand("isjailed",
            function(source, args)
                local player = source
                local targetPlayerID = 
                tonumber(args[1])
                local targetPlayer = 
                GetPlayerByServerID(targetPlayerID)

                if targetPlayer then
                    local isJailed =
                    IsPlayerJailed(targetPlayer)
                    
                    TriggerClientEvent("isJailedResult", player, isJailed)
                            else
                        end
                    end)

                    RegisterCommand("remainingjailtime",
                    function(source, args)
                        local player = source
                        local targetPlayerID =
                        tonumber(args[1])
                        local targetPlayer =
                        GetPlayerByServerID(targetPlayerID)
                    

