#
# Makefile for physical layer USB drivers
#

ccflags-$(CONFIG_USB_DEBUG) := -DDEBUG

obj-$(CONFIG_OMAP_USB2)			+= omap-usb2.o
obj-$(CONFIG_USB_ISP1301)		+= isp1301.o
obj-$(CONFIG_MV_U3D_PHY)		+= mv_u3d_phy.o
obj-$(CONFIG_USB_EHCI_TEGRA)	+= tegra_usb_phy.o
obj-$(CONFIG_USB_RCAR_PHY)		+= rcar-phy.o

#added by cqx
obj-$(CONFIG_PHY_EXYNOS4X12_USB2) 	+= phy-samsung-usb2.o
obj-$(CONFIG_PHY_EXYNOS4X12_USB2)	+= phy-exynos4x12-usb2.o
