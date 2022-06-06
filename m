Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A76A753EF3B
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:11:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233278AbiFFULC (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:11:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233387AbiFFUKw (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:52 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB2A513642E
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:47 -0700 (PDT)
Message-ID: <20220606200811.187515502@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546246;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=MjCT1expSgEv0Hb6LTQWV9IbNgCaSGQZc0fnLnqX01g=;
        b=KpILscoLRgxFA7TM6AqtO27RcQlTqhRPHYjNIf2AgBFSbqYNyDj41QAx3+NIEkigWYYxNq
        hf+UEQzGWZ9L8sSYkp0Icf90KCmiP98q2CpR+ykt5w9KSbYW9uf0V5g09DyqZZ29O9J7Lz
        Yc0o9BBD6zkELtkMm7GPFP9e7z9Tn0VUdyfSXXdL3+hMtSCCbnM4CcBkzl/20ruUDVmM0l
        aZX07NSs2wghWwoo1eyu3zVAhLebIZCBWIscloxHY/eVBYwjdCwDtQizhn1Z5Vt2xoUJqk
        3yjNjXZARf7l8BF7ibtOYPSVvHtY6DQ0Gxcbp+Nxlt1y7RqgJbaAik0D1KnCQg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546246;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=MjCT1expSgEv0Hb6LTQWV9IbNgCaSGQZc0fnLnqX01g=;
        b=kG53XJf+wN31Gob94SH18SxHGhvdqI/ybkBWrEfxMiRcE9pwEdMtUrmyB13uleWjgQPlQj
        WIIgAxASESr13DBw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 19/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_347.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:45 +0200 (CEST)
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
    free software foundation version 2 of the license and no later version
    this program is distributed in the hope that it will be useful but
    without any warranty without even the implied warranty of
    merchantability or fitness for a particular purpose good title or non
    infringement see the gnu general public license for more details  you
    should have received a copy of the gnu general public license along
    with this program if not write to the free software foundation inc 51
    franklin st fifth floor boston ma 02110-1301 usa  the full gnu general
    public license is included in this distribution in the file called
    copying

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/net/vmxnet3/Makefile          |   17 +----------------
 drivers/net/vmxnet3/upt1_defs.h       |   19 +------------------
 drivers/net/vmxnet3/vmxnet3_defs.h    |   19 +------------------
 drivers/net/vmxnet3/vmxnet3_drv.c     |   19 +------------------
 drivers/net/vmxnet3/vmxnet3_ethtool.c |   19 +------------------
 drivers/net/vmxnet3/vmxnet3_int.h     |   19 +------------------
 6 files changed, 6 insertions(+), 106 deletions(-)

--- a/drivers/net/vmxnet3/Makefile
+++ b/drivers/net/vmxnet3/Makefile
@@ -1,25 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0-only
 ################################################################################
 #
 # Linux driver for VMware's vmxnet3 ethernet NIC.
 #
 # Copyright (C) 2007-2021, VMware, Inc. All Rights Reserved.
 #
-# This program is free software; you can redistribute it and/or modify it
-# under the terms of the GNU General Public License as published by the
-# Free Software Foundation; version 2 of the License and no later version.
-#
-# This program is distributed in the hope that it will be useful, but
-# WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, GOOD TITLE or
-# NON INFRINGEMENT.  See the GNU General Public License for more
-# details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
-#
-# The full GNU General Public License is included in this distribution in
-# the file called "COPYING".
 #
 # Maintained by: pv-drivers@vmware.com
 #
--- a/drivers/net/vmxnet3/upt1_defs.h
+++ b/drivers/net/vmxnet3/upt1_defs.h
@@ -1,27 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Linux driver for VMware's vmxnet3 ethernet NIC.
  *
  * Copyright (C) 2008-2021, VMware, Inc. All Rights Reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; version 2 of the License and no later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, GOOD TITLE or
- * NON INFRINGEMENT.  See the GNU General Public License for more
- * details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- * The full GNU General Public License is included in this distribution in
- * the file called "COPYING".
- *
  * Maintained by: pv-drivers@vmware.com
- *
  */
 
 #ifndef _UPT1_DEFS_H
--- a/drivers/net/vmxnet3/vmxnet3_defs.h
+++ b/drivers/net/vmxnet3/vmxnet3_defs.h
@@ -1,27 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Linux driver for VMware's vmxnet3 ethernet NIC.
  *
  * Copyright (C) 2008-2021, VMware, Inc. All Rights Reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; version 2 of the License and no later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, GOOD TITLE or
- * NON INFRINGEMENT.  See the GNU General Public License for more
- * details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- * The full GNU General Public License is included in this distribution in
- * the file called "COPYING".
- *
  * Maintained by: pv-drivers@vmware.com
- *
  */
 
 #ifndef _VMXNET3_DEFS_H_
--- a/drivers/net/vmxnet3/vmxnet3_drv.c
+++ b/drivers/net/vmxnet3/vmxnet3_drv.c
@@ -1,27 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Linux driver for VMware's vmxnet3 ethernet NIC.
  *
  * Copyright (C) 2008-2021, VMware, Inc. All Rights Reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; version 2 of the License and no later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, GOOD TITLE or
- * NON INFRINGEMENT. See the GNU General Public License for more
- * details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- * The full GNU General Public License is included in this distribution in
- * the file called "COPYING".
- *
  * Maintained by: pv-drivers@vmware.com
- *
  */
 
 #include <linux/module.h>
--- a/drivers/net/vmxnet3/vmxnet3_ethtool.c
+++ b/drivers/net/vmxnet3/vmxnet3_ethtool.c
@@ -1,27 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Linux driver for VMware's vmxnet3 ethernet NIC.
  *
  * Copyright (C) 2008-2021, VMware, Inc. All Rights Reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; version 2 of the License and no later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, GOOD TITLE or
- * NON INFRINGEMENT.  See the GNU General Public License for more
- * details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- * The full GNU General Public License is included in this distribution in
- * the file called "COPYING".
- *
  * Maintained by: pv-drivers@vmware.com
- *
  */
 
 
--- a/drivers/net/vmxnet3/vmxnet3_int.h
+++ b/drivers/net/vmxnet3/vmxnet3_int.h
@@ -1,27 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Linux driver for VMware's vmxnet3 ethernet NIC.
  *
  * Copyright (C) 2008-2021, VMware, Inc. All Rights Reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; version 2 of the License and no later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, GOOD TITLE or
- * NON INFRINGEMENT.  See the GNU General Public License for more
- * details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- * The full GNU General Public License is included in this distribution in
- * the file called "COPYING".
- *
  * Maintained by: pv-drivers@vmware.com
- *
  */
 
 #ifndef _VMXNET3_INT_H

