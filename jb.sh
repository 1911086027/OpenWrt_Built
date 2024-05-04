#!/bin/bash

source_branches = ("openwrt" "lede" "immortalwrt" "Lienol")
docker_imgs = ("1911086027/openwrt_cortex-a53:openwrt" "1911086027/openwrt_cortex-a53:lede" "1911086027/openwrt_cortex-a53:immortalwrt" "1911086027/openwrt_cortex-a53:Lienol")
for i in $(seq 0 3); do
  source_branch="${source_branches[$i]}"
  docker_img="${docker_imgs[$i]}"
  curl -L \
    -X POST \
    -H "Authorization: Bearer ${{ secrets.PAT }}" \
    -H "Accept: application/vnd.github.everest-preview+json" \
    -H "Content-Type: application/json" \
    https://api.github.com/repos/${{ github.repository }}/dispatches \
    -d '{"event_type": "call", "client_payload": {"source_branch": "$source_branch", "openwrt_kernel": "5.10.y_5.15.y", "openwrt_board": "s905d", "docker_img": "$docker_img"}}'
done
