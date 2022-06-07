Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC6E85400D7
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245166AbiFGOLh (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245152AbiFGOLd (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:33 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BF979B184
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:32 -0700 (PDT)
Message-ID: <20220607131511.351282479@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611090;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=wwW7qtKc5hXRzDuwyGYoRKhzaK3KlTkMEyR5wLzwHrw=;
        b=nIC0uEyZ2+jMeGoWKS4dZIhIl9kNSUUfyCl4zWnySRBpYHv+bk+c/sXPb29GELTcRUYE3c
        QxbfMfEPBjge2Fx+ZHujwezcWl3Txn5Jgc6kFdyOwKseFA7/qUdDMZs8LxZ1/emiEpPjoa
        XeYUbrQv2qnBkH6qWKhDPZTh/WOqRGGCLwWucVQ56+VszqAVOAP5LnxxFx38yYAueUJTZi
        vXEmwVEI04mNCsZVoKxlMwoBnFzGGxGn7JnUdrt/fRQvTnIf6Oy+F61qycELOjL0KrQcB4
        6/xzSvLJc1vGTzwDszd9k1EeuBydB+kYyVo8lWYMY3GjLbrmXkRsu/9+KUMzJw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611090;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=wwW7qtKc5hXRzDuwyGYoRKhzaK3KlTkMEyR5wLzwHrw=;
        b=M+eZe/49y0IOJgM8jLVTyhxGLA8BMCK426smOk+j1PrWNwENISKOy7N2rruOzsi/YJDB77
        ++fySNT4hLZA7WDA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 17/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_318.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:30 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Based on the normalized pattern:

    this program is free software you can redistribute it and/or modify it
    under the terms of the gnu general public license as published by the
    free software foundation version 2  this program is distributed as is
    without any warranty of any kind whether express or implied without
    even the implied warranty of merchantability or fitness for a
    particular purpose see the gnu general public license for more details
    you should have received a copy of the gnu general public license
    along with this program if not write to the free software foundation
    inc 59 temple place suite 330 boston ma 02111-1307 usa

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Allison Randal <allison@lohutok.net>
---
 drivers/pinctrl/pinctrl-as3722.c       |   15 +--------------
 drivers/pinctrl/pinctrl-palmas.c       |   15 +--------------
 drivers/pinctrl/pinctrl-utils.c        |   15 +--------------
 drivers/pinctrl/pinctrl-utils.h        |   15 +--------------
 drivers/regulator/max8973-regulator.c  |   15 +--------------
 drivers/regulator/tps51632-regulator.c |   15 +--------------
 drivers/regulator/tps62360-regulator.c |   15 +--------------
 7 files changed, 7 insertions(+), 98 deletions(-)

--- a/drivers/pinctrl/pinctrl-as3722.c
+++ b/drivers/pinctrl/pinctrl-as3722.c
@@ -1,23 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * ams AS3722 pin control and GPIO driver.
  *
  * Copyright (c) 2013, NVIDIA Corporation.
  *
  * Author: Laxman Dewangan <ldewangan@nvidia.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any kind,
- * whether express or implied; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
- * 02111-1307, USA
  */
 
 #include <linux/delay.h>
--- a/drivers/pinctrl/pinctrl-palmas.c
+++ b/drivers/pinctrl/pinctrl-palmas.c
@@ -1,23 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * pinctrl-palmas.c -- TI PALMAS series pin control driver.
  *
  * Copyright (c) 2013, NVIDIA Corporation.
  *
  * Author: Laxman Dewangan <ldewangan@nvidia.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any kind,
- * whether express or implied; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
- * 02111-1307, USA
  */
 
 #include <linux/delay.h>
--- a/drivers/pinctrl/pinctrl-utils.c
+++ b/drivers/pinctrl/pinctrl-utils.c
@@ -1,23 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Utils functions to implement the pincontrol driver.
  *
  * Copyright (c) 2013, NVIDIA Corporation.
  *
  * Author: Laxman Dewangan <ldewangan@nvidia.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any kind,
- * whether express or implied; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
- * 02111-1307, USA
  */
 #include <linux/device.h>
 #include <linux/export.h>
--- a/drivers/pinctrl/pinctrl-utils.h
+++ b/drivers/pinctrl/pinctrl-utils.h
@@ -1,23 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Utils functions to implement the pincontrol driver.
  *
  * Copyright (c) 2013, NVIDIA Corporation.
  *
  * Author: Laxman Dewangan <ldewangan@nvidia.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any kind,
- * whether express or implied; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
- * 02111-1307, USA
  */
 #ifndef __PINCTRL_UTILS_H__
 #define __PINCTRL_UTILS_H__
--- a/drivers/regulator/max8973-regulator.c
+++ b/drivers/regulator/max8973-regulator.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * max8973-regulator.c -- Maxim max8973A
  *
@@ -6,20 +7,6 @@
  * Copyright (c) 2012, NVIDIA Corporation.
  *
  * Author: Laxman Dewangan <ldewangan@nvidia.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any kind,
- * whether express or implied; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
- * 02111-1307, USA
  */
 
 #include <linux/kernel.h>
--- a/drivers/regulator/tps51632-regulator.c
+++ b/drivers/regulator/tps51632-regulator.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * tps51632-regulator.c -- TI TPS51632
  *
@@ -7,20 +8,6 @@
  * Copyright (c) 2012, NVIDIA Corporation.
  *
  * Author: Laxman Dewangan <ldewangan@nvidia.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any kind,
- * whether express or implied; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
- * 02111-1307, USA
  */
 
 #include <linux/err.h>
--- a/drivers/regulator/tps62360-regulator.c
+++ b/drivers/regulator/tps62360-regulator.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * tps62360.c -- TI tps62360
  *
@@ -6,20 +7,6 @@
  * Copyright (c) 2012, NVIDIA Corporation.
  *
  * Author: Laxman Dewangan <ldewangan@nvidia.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any kind,
- * whether express or implied; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
- * 02111-1307, USA
  */
 
 #include <linux/kernel.h>

