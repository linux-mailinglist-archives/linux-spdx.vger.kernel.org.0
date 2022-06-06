Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D76B053EF37
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:10:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233170AbiFFUK4 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:10:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233067AbiFFUKn (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:43 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52CB012FEE2
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:40 -0700 (PDT)
Message-ID: <20220606200810.900749106@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546238;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=QZEW+D3y/cCRfMCcUwZnaDUqNcuRNGHTzT+YSWjUiL8=;
        b=PEEALHRoi+wRKDfD6lnbh8zv70GYnswTh/BylXcxNZZrqD0RfkThsa97kHkehUnqb2CN0C
        bdJYk1XwOBsa8zRapQVx9p3wAAY2+XbMEG/8s+T+fBO/leAk5MnMz23ksOeRpJnRRMTxLl
        DT7idmGdFsu7TKhxNL06qEYiZmkXabnbWXmxqc2meGCKT42bM/NCWx87wWjKZUxd06eKeb
        zd70WGc64VrYgavq20Bb7J60BRzDT0CyTlY8WWxh9tbVAKZzdwUt4lzDC3RwSTQDHuMFfv
        mPbJbIOFnTmdGVydRJy0p1jkCXvnEmxVVmV9IfO8/bPLT7uZe+UPmrxsOJZ/Qw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546238;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=QZEW+D3y/cCRfMCcUwZnaDUqNcuRNGHTzT+YSWjUiL8=;
        b=pxpRKehOkTmpq/BHX3tmZGn5RR6j/xKU2Uu5pVUiYqDYE4cLtVM7NP0JCRyW8oMOrlKBr6
        DUKnqmhe0aLs4oCQ==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 14/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_292.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:38 +0200 (CEST)
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
    under the terms of the gnu general public license version 2 as
    published by the free software foundation  you should have received a
    copy of the gnu general public license along with this program if not
    see <http://www gnu org/licenses/>  this software is provided as is
    and without any express or implied warranties including without
    limitation the implied warranties of merchantability and fitness for a
    particular purpose

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/net/ethernet/chelsio/cxgb/common.h            |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/cphy.h              |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/cpl5_cmd.h          |   12 +-----------
 drivers/net/ethernet/chelsio/cxgb/elmer0.h            |   12 +-----------
 drivers/net/ethernet/chelsio/cxgb/espi.c              |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/espi.h              |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/gmac.h              |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/mv88x201x.c         |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/pm3393.c            |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/regs.h              |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/sge.c               |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/sge.h               |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/subr.c              |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/suni1x10gexp_regs.h |   12 +-----------
 14 files changed, 14 insertions(+), 143 deletions(-)

--- a/drivers/net/ethernet/chelsio/cxgb/common.h
+++ b/drivers/net/ethernet/chelsio/cxgb/common.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: common.h                                                            *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/cphy.h
+++ b/drivers/net/ethernet/chelsio/cxgb/cphy.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: cphy.h                                                              *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/cpl5_cmd.h
+++ b/drivers/net/ethernet/chelsio/cxgb/cpl5_cmd.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: cpl5_cmd.h                                                          *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
@@ -635,4 +626,3 @@ struct cpl_mss_change {
 };
 
 #endif /* _CXGB_CPL5_CMD_H_ */
-
--- a/drivers/net/ethernet/chelsio/cxgb/elmer0.h
+++ b/drivers/net/ethernet/chelsio/cxgb/elmer0.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: elmer0.h                                                            *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
@@ -154,4 +145,3 @@ enum {
 #define MI1_OP_INDIRECT_READ     3
 
 #endif /* _CXGB_ELMER0_H_ */
-
--- a/drivers/net/ethernet/chelsio/cxgb/espi.c
+++ b/drivers/net/ethernet/chelsio/cxgb/espi.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*****************************************************************************
  *                                                                           *
  * File: espi.c                                                              *
@@ -7,16 +8,6 @@
  *  Ethernet SPI functionality.                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/espi.h
+++ b/drivers/net/ethernet/chelsio/cxgb/espi.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: espi.h                                                              *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/gmac.h
+++ b/drivers/net/ethernet/chelsio/cxgb/gmac.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: gmac.h                                                              *
@@ -7,16 +8,6 @@
  *  Generic MAC functionality.                                               *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/mv88x201x.c
+++ b/drivers/net/ethernet/chelsio/cxgb/mv88x201x.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*****************************************************************************
  *                                                                           *
  * File: mv88x201x.c                                                         *
@@ -7,16 +8,6 @@
  *  Marvell PHY (mv88x201x) functionality.                                   *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/pm3393.c
+++ b/drivers/net/ethernet/chelsio/cxgb/pm3393.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*****************************************************************************
  *                                                                           *
  * File: pm3393.c                                                            *
@@ -7,16 +8,6 @@
  *  PMC/SIERRA (pm3393) MAC-PHY functionality.                               *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/regs.h
+++ b/drivers/net/ethernet/chelsio/cxgb/regs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: regs.h                                                              *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/sge.c
+++ b/drivers/net/ethernet/chelsio/cxgb/sge.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*****************************************************************************
  *                                                                           *
  * File: sge.c                                                               *
@@ -7,16 +8,6 @@
  *  DMA engine.                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/sge.h
+++ b/drivers/net/ethernet/chelsio/cxgb/sge.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: sge.h                                                               *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/subr.c
+++ b/drivers/net/ethernet/chelsio/cxgb/subr.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*****************************************************************************
  *                                                                           *
  * File: subr.c                                                              *
@@ -7,16 +8,6 @@
  *  Various subroutines (intr,pio,etc.) used by Chelsio 10G Ethernet driver. *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/suni1x10gexp_regs.h
+++ b/drivers/net/ethernet/chelsio/cxgb/suni1x10gexp_regs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: suni1x10gexp_regs.h                                                 *
@@ -7,16 +8,6 @@
  *  PMC/SIERRA (pm3393) MAC-PHY functionality.                               *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
@@ -1639,4 +1630,3 @@
 #define SUNI1x10GEXP_BITMSK_PL4IDU_DIP4I       0x0002
 
 #endif /* _CXGB_SUNI1x10GEXP_REGS_H_ */
-

