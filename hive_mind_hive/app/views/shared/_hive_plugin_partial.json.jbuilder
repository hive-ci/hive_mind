json.version @device.plugin.version

json.connected_devices do
  json.array!(@device.related_devices) do |device|
    json.partial! partial: 'devices/show', locals: { device: device, no_cascade: 1 }
  end
end
