-- Generate a list of triggers and labels for a given animation type
function GetAnimationTriggersAndLabelsList(type)
    local animationTypes = {"Emotes", "PropEmotes", "Exits", "Dances", "AnimalEmotes", "Shared"}
    local expressionTypes = {"Expressions", "Walks" }

    local list = {}
    local emotes = nil

    if type == "Expressions" then
      for k,v in pairs(RP[type]) do
        local definition = {
          trigger = RP[type][k][1],
          label = k,
          type = type
        }
        table.insert(list, definition)
      end
    elseif type == "Walks" then
      for k,v in pairs(RP[type]) do
        local definition = {
          trigger = k,
          label = k,
          type = type
        }
        table.insert(list, definition)
      end
    elseif ArrayHasValue(animationTypes, type) then
       for k,v in pairs(RP[type]) do
        local definition = {
          trigger = k,
          label = v[3],
          type = type
        }
        table.insert(list, definition)
      end
    end
    return list
end

function dump(o)
  if type(o) == 'table' then
     local s = '{ '
     for k,v in pairs(o) do
        if type(k) ~= 'number' then k = '"'..k..'"' end
        s = s .. '['..k..'] = ' .. dump(v) .. ','
     end
     return s .. '} '
  else
     return tostring(o)
  end
end

-- Provide a means to get all emote labels and triggers
-- from an outside resource so UIs can be programatically
-- built without maintaining a separate list in the outside 
-- resource.
  exports('getListOfAnimalEmotes', function()
      return GetAnimationTriggersAndLabelsList("AnimalEmotes")
  end)

  exports('getListOfDances', function()
      return GetAnimationTriggersAndLabelsList("Dances")
  end)

  exports('getListOfEmotes', function()
      return GetAnimationTriggersAndLabelsList("Emotes")
  end)

  exports('getListOfExits', function()
    return GetAnimationTriggersAndLabelsList("Exits")
  end)

  exports('getListOfExpressions', function()
    return GetAnimationTriggersAndLabelsList("Expressions")
  end)

  exports('getListOfPropEmotes', function()
    return GetAnimationTriggersAndLabelsList("PropEmotes")
  end)

  exports('getListOfShared', function()
      return GetAnimationTriggersAndLabelsList("AnimalEmotes")
  end)

  exports('getListOfWalks', function()
      return GetAnimationTriggersAndLabelsList("Walks")
  end)