sudo btrfs subvolume snapshot -r / /snaps/snap-20-02-2022
sudo btrfs subvolume show /
sudo btrfs subvolume set-default ID /
sudo btrfs subvolume get-default /
mount -o subvolid=256 /dev/nvme0n1p2 /mnt
cd /mnt
sudo btrfs subvolume delete /mnt/snaps/snap-24-02-2022/
!
