Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14C8853EF2F
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:10:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233217AbiFFUKe (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:10:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233213AbiFFUKY (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:24 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EA4E11045B
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:21 -0700 (PDT)
Message-ID: <20220606200810.180325466@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546219;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=f4fbft2dEQHx3EzBlzvbdd5fvjOrJPmdMvv9SlzgWSc=;
        b=XsDVL0ZyFxp2j5aOMPd0fHZKEuI42ZO10VosXWtZuAeHSAGx13DuZ0cGSFRGXxN67Xj0Qq
        gkA4y/jNu/BPR9ON6hgUrvah0hccbp5kxsSZHasC2gKX6aP0ex9WSBUTO7PgjpWZIWOWMq
        herLqhgEDTnAkpn8IU2pNhQGL5QEFGI7Cof2Yj1eJXvK6yCTS870wHH+iK17fzNajDET/p
        MUkxZRseuq+YShFmqEGOrINy9Eo9LYo1IORXBZYCGwRwsWmUz9dINOSDvmtUixysmgh7nL
        jsD83MFKADJ3CxG+uRVI51qyKiA7GSD+tyHe6bX2gBSexO3lt8bYw1IPBz7Ing==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546219;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=f4fbft2dEQHx3EzBlzvbdd5fvjOrJPmdMvv9SlzgWSc=;
        b=SegTXHCMgc6f9Vr3FVMK4NpHyNvct31MxYoOX13NwE2CvHktmoQZUKATVdnU/BnAd1ocvj
        +xdxiRz7aqw0y9BQ==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 02/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_13.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:19 +0200 (CEST)
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
    free software foundation version 2 of the license  this program is
    distributed in the hope that it will be useful but without any
    warranty without even the implied warranty of merchantability or
    fitness for a particular purpose see the gnu general public license
    for more details  no warranty the program is provided on an as is
    basis without warranties or conditions of any kind either express or
    implied including without limitation any warranties or conditions of
    title non-infringement merchantability or fitness for a particular
    purpose each recipient is solely responsible for determining the
    appropriateness of using and distributing the program and assumes all
    risks associated with its exercise of rights under this agreement
    including but not limited to the risks and costs of program errors
    damage to or loss of data programs or equipment and unavailability or
    interruption of operations  disclaimer of liability neither recipient
    nor any contributors shall have any liability for any direct indirect
    incidental special exemplary or consequential damages (including
    without limitation lost profits) however caused and on any theory of
    liability whether in contract strict liability or tort (including
    negligence or otherwise) arising in any way out of the use or
    distribution of the program or the exercise of any rights granted
    hereunder even if advised of the possibility of such damages  you
    should have received a copy of the gnu general public license along
    with this program if not write to the free software foundation inc 59
    temple place suite 330 boston ma 02111-1307 usa

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/message/fusion/mptbase.h  |   37 +------------------------------------
 drivers/message/fusion/mptctl.h   |   37 +------------------------------------
 drivers/message/fusion/mptlan.h   |   38 +-------------------------------------
 drivers/message/fusion/mptsas.h   |   37 +------------------------------------
 drivers/message/fusion/mptscsih.h |   36 +-----------------------------------
 drivers/scsi/3w-9xxx.h            |   35 +----------------------------------
 drivers/scsi/3w-sas.h             |   35 +----------------------------------
 drivers/scsi/3w-xxxx.h            |   34 +---------------------------------
 drivers/scsi/esas2r/atioctl.h     |   36 +-----------------------------------
 drivers/scsi/esas2r/atvda.h       |   37 +------------------------------------
 drivers/scsi/esas2r/esas2r_disc.c |   36 +-----------------------------------
 drivers/scsi/esas2r/esas2r_int.c  |   36 +-----------------------------------
 drivers/scsi/esas2r/esas2r_vda.c  |   36 +-----------------------------------
 13 files changed, 13 insertions(+), 457 deletions(-)

--- a/drivers/message/fusion/mptbase.h
+++ b/drivers/message/fusion/mptbase.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  *  linux/drivers/message/fusion/mptbase.h
  *      High performance SCSI + LAN / Fibre Channel device drivers.
@@ -7,43 +8,8 @@
  *
  *  Copyright (c) 1999-2008 LSI Corporation
  *  (mailto:DL-MPTFusionLinux@lsi.com)
- *
  */
 /*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
-/*
-    This program is free software; you can redistribute it and/or modify
-    it under the terms of the GNU General Public License as published by
-    the Free Software Foundation; version 2 of the License.
-
-    This program is distributed in the hope that it will be useful,
-    but WITHOUT ANY WARRANTY; without even the implied warranty of
-    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-    GNU General Public License for more details.
-
-    NO WARRANTY
-    THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
-    CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
-    LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
-    MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
-    solely responsible for determining the appropriateness of using and
-    distributing the Program and assumes all risks associated with its
-    exercise of rights under this Agreement, including but not limited to
-    the risks and costs of program errors, damage to or loss of data,
-    programs or equipment, and unavailability or interruption of operations.
-
-    DISCLAIMER OF LIABILITY
-    NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
-    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
-    DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
-    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
-    USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
-    HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
-
-    You should have received a copy of the GNU General Public License
-    along with this program; if not, write to the Free Software
-    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-*/
 
 #ifndef MPTBASE_H_INCLUDED
 #define MPTBASE_H_INCLUDED
@@ -1004,4 +970,3 @@ extern int mpt_fwfault_debug;
 
 /*}-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
 #endif
-
--- a/drivers/message/fusion/mptctl.h
+++ b/drivers/message/fusion/mptctl.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  *  linux/drivers/message/fusion/mptioctl.h
  *      Fusion MPT misc device (ioctl) driver.
@@ -7,43 +8,8 @@
  *
  *  Copyright (c) 1999-2008 LSI Corporation
  *  (mailto:DL-MPTFusionLinux@lsi.com)
- *
  */
 /*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
-/*
-    This program is free software; you can redistribute it and/or modify
-    it under the terms of the GNU General Public License as published by
-    the Free Software Foundation; version 2 of the License.
-
-    This program is distributed in the hope that it will be useful,
-    but WITHOUT ANY WARRANTY; without even the implied warranty of
-    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-    GNU General Public License for more details.
-
-    NO WARRANTY
-    THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
-    CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
-    LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
-    MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
-    solely responsible for determining the appropriateness of using and
-    distributing the Program and assumes all risks associated with its
-    exercise of rights under this Agreement, including but not limited to
-    the risks and costs of program errors, damage to or loss of data,
-    programs or equipment, and unavailability or interruption of operations.
-
-    DISCLAIMER OF LIABILITY
-    NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
-    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
-    DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
-    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
-    USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
-    HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
-
-    You should have received a copy of the GNU General Public License
-    along with this program; if not, write to the Free Software
-    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-*/
 
 #ifndef MPTCTL_H_INCLUDED
 #define MPTCTL_H_INCLUDED
@@ -464,4 +430,3 @@ typedef struct _hp_target_info {
 /*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
 
 #endif
-
--- a/drivers/message/fusion/mptlan.h
+++ b/drivers/message/fusion/mptlan.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  *  linux/drivers/message/fusion/mptlan.h
  *      IP Over Fibre Channel device driver.
@@ -6,44 +7,8 @@
  *
  *  Copyright (c) 2000-2008 LSI Corporation
  *  (mailto:DL-MPTFusionLinux@lsi.com)
- *
  */
 /*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
-/*
-    This program is free software; you can redistribute it and/or modify
-    it under the terms of the GNU General Public License as published by
-    the Free Software Foundation; version 2 of the License.
-
-    This program is distributed in the hope that it will be useful,
-    but WITHOUT ANY WARRANTY; without even the implied warranty of
-    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-    GNU General Public License for more details.
-
-    NO WARRANTY
-    THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
-    CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
-    LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
-    MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
-    solely responsible for determining the appropriateness of using and
-    distributing the Program and assumes all risks associated with its
-    exercise of rights under this Agreement, including but not limited to
-    the risks and costs of program errors, damage to or loss of data,
-    programs or equipment, and unavailability or interruption of operations.
-
-    DISCLAIMER OF LIABILITY
-    NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
-    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
-    DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
-    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
-    USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
-    HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
-
-    You should have received a copy of the GNU General Public License
-    along with this program; if not, write to the Free Software
-    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-*/
-/*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
 
 /* mptlan.h */
 
@@ -127,4 +92,3 @@ MODULE_DESCRIPTION(LANAME);
 
 /*****************************************************************************/
 #endif
-
--- a/drivers/message/fusion/mptsas.h
+++ b/drivers/message/fusion/mptsas.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  *  linux/drivers/message/fusion/mptsas.h
  *      High performance SCSI + LAN / Fibre Channel device drivers.
@@ -7,44 +8,8 @@
  *
  *  Copyright (c) 1999-2008 LSI Corporation
  *  (mailto:DL-MPTFusionLinux@lsi.com)
- *
  */
 /*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
-/*
-    This program is free software; you can redistribute it and/or modify
-    it under the terms of the GNU General Public License as published by
-    the Free Software Foundation; version 2 of the License.
-
-    This program is distributed in the hope that it will be useful,
-    but WITHOUT ANY WARRANTY; without even the implied warranty of
-    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-    GNU General Public License for more details.
-
-    NO WARRANTY
-    THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
-    CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
-    LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
-    MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
-    solely responsible for determining the appropriateness of using and
-    distributing the Program and assumes all risks associated with its
-    exercise of rights under this Agreement, including but not limited to
-    the risks and costs of program errors, damage to or loss of data,
-    programs or equipment, and unavailability or interruption of operations.
-
-    DISCLAIMER OF LIABILITY
-    NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
-    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
-    DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
-    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
-    USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
-    HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
-
-    You should have received a copy of the GNU General Public License
-    along with this program; if not, write to the Free Software
-    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-*/
-
 #ifndef MPTSAS_H_INCLUDED
 #define MPTSAS_H_INCLUDED
 /*{-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
--- a/drivers/message/fusion/mptscsih.h
+++ b/drivers/message/fusion/mptscsih.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  *  linux/drivers/message/fusion/mptscsih.h
  *      High performance SCSI / Fibre Channel SCSI Host device driver.
@@ -7,43 +8,8 @@
  *
  *  Copyright (c) 1999-2008 LSI Corporation
  *  (mailto:DL-MPTFusionLinux@lsi.com)
- *
  */
 /*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
-/*
-    This program is free software; you can redistribute it and/or modify
-    it under the terms of the GNU General Public License as published by
-    the Free Software Foundation; version 2 of the License.
-
-    This program is distributed in the hope that it will be useful,
-    but WITHOUT ANY WARRANTY; without even the implied warranty of
-    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-    GNU General Public License for more details.
-
-    NO WARRANTY
-    THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
-    CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
-    LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
-    MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
-    solely responsible for determining the appropriateness of using and
-    distributing the Program and assumes all risks associated with its
-    exercise of rights under this Agreement, including but not limited to
-    the risks and costs of program errors, damage to or loss of data,
-    programs or equipment, and unavailability or interruption of operations.
-
-    DISCLAIMER OF LIABILITY
-    NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
-    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
-    DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
-    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
-    USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
-    HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
-
-    You should have received a copy of the GNU General Public License
-    along with this program; if not, write to the Free Software
-    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-*/
 
 #ifndef SCSIHOST_H_INCLUDED
 #define SCSIHOST_H_INCLUDED
--- a/drivers/scsi/3w-9xxx.h
+++ b/drivers/scsi/3w-9xxx.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    3w-9xxx.h -- 3ware 9000 Storage Controller device driver for Linux.
 
@@ -7,39 +8,6 @@
    Copyright (C) 2004-2009 Applied Micro Circuits Corporation.
    Copyright (C) 2010 LSI Corporation.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; version 2 of the License.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   NO WARRANTY
-   THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
-   CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
-   LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
-   MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
-   solely responsible for determining the appropriateness of using and
-   distributing the Program and assumes all risks associated with its
-   exercise of rights under this Agreement, including but not limited to
-   the risks and costs of program errors, damage to or loss of data,
-   programs or equipment, and unavailability or interruption of operations.
-
-   DISCLAIMER OF LIABILITY
-   NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
-   DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
-   DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
-   ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-   TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
-   USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
-   HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software
-   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-
    Bugs/Comments/Suggestions should be mailed to:
    aradford@gmail.com
 */
@@ -692,4 +660,3 @@ typedef struct TAG_TW_Device_Extension {
 } TW_Device_Extension;
 
 #endif /* _3W_9XXX_H */
-
--- a/drivers/scsi/3w-sas.h
+++ b/drivers/scsi/3w-sas.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    3w-sas.h -- LSI 3ware SAS/SATA-RAID Controller device driver for Linux.
 
@@ -5,39 +6,6 @@
 
    Copyright (C) 2009 LSI Corporation.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; version 2 of the License.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   NO WARRANTY
-   THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
-   CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
-   LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
-   MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
-   solely responsible for determining the appropriateness of using and
-   distributing the Program and assumes all risks associated with its
-   exercise of rights under this Agreement, including but not limited to
-   the risks and costs of program errors, damage to or loss of data,
-   programs or equipment, and unavailability or interruption of operations.
-
-   DISCLAIMER OF LIABILITY
-   NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
-   DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
-   DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
-   ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-   TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
-   USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
-   HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software
-   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-
    Bugs/Comments/Suggestions should be mailed to:
    aradford@gmail.com
 */
@@ -402,4 +370,3 @@ typedef struct TAG_TW_Device_Extension {
 } TW_Device_Extension;
 
 #endif /* _3W_SAS_H */
-
--- a/drivers/scsi/3w-xxxx.h
+++ b/drivers/scsi/3w-xxxx.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    3w-xxxx.h -- 3ware Storage Controller device driver for Linux.
 
@@ -11,39 +12,6 @@
    Kernel compatibility By:	Andre Hedrick <andre@suse.com>
    Non-Copyright (C) 2000	Andre Hedrick <andre@suse.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; version 2 of the License.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   NO WARRANTY
-   THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
-   CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
-   LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
-   MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
-   solely responsible for determining the appropriateness of using and
-   distributing the Program and assumes all risks associated with its
-   exercise of rights under this Agreement, including but not limited to
-   the risks and costs of program errors, damage to or loss of data,
-   programs or equipment, and unavailability or interruption of operations.
-
-   DISCLAIMER OF LIABILITY
-   NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
-   DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
-   DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
-   ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-   TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
-   USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
-   HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software
-   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-
    Bugs/Comments/Suggestions should be mailed to:
 
    aradford@gmail.com
--- a/drivers/scsi/esas2r/atioctl.h
+++ b/drivers/scsi/esas2r/atioctl.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*  linux/drivers/scsi/esas2r/atioctl.h
  *      ATTO IOCTL Handling
  *
@@ -5,41 +6,6 @@
  *  (mailto:linuxdrivers@attotech.com)
  */
 /*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
-/*
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; version 2 of the License.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  NO WARRANTY
- *  THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
- *  CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
- *  LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
- *  MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
- *  solely responsible for determining the appropriateness of using and
- *  distributing the Program and assumes all risks associated with its
- *  exercise of rights under this Agreement, including but not limited to
- *  the risks and costs of program errors, damage to or loss of data,
- *  programs or equipment, and unavailability or interruption of operations.
- *
- *  DISCLAIMER OF LIABILITY
- *  NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
- *  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
- *  DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
- *  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
- *  TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
- *  USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
- *  HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-/*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
 
 #include "atvda.h"
 
--- a/drivers/scsi/esas2r/atvda.h
+++ b/drivers/scsi/esas2r/atvda.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*  linux/drivers/scsi/esas2r/atvda.h
  *       ATTO VDA interface definitions
  *
@@ -5,42 +6,6 @@
  *  (mailto:linuxdrivers@attotech.com)
  */
 /*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
-/*
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; version 2 of the License.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  NO WARRANTY
- *  THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
- *  CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
- *  LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
- *  MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
- *  solely responsible for determining the appropriateness of using and
- *  distributing the Program and assumes all risks associated with its
- *  exercise of rights under this Agreement, including but not limited to
- *  the risks and costs of program errors, damage to or loss of data,
- *  programs or equipment, and unavailability or interruption of operations.
- *
- *  DISCLAIMER OF LIABILITY
- *  NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
- *  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
- *  DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
- *  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
- *  TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
- *  USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
- *  HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-/*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
-
 
 #ifndef ATVDA_H
 #define ATVDA_H
--- a/drivers/scsi/esas2r/esas2r_disc.c
+++ b/drivers/scsi/esas2r/esas2r_disc.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  *  linux/drivers/scsi/esas2r/esas2r_disc.c
  *      esas2r device discovery routines
@@ -6,41 +7,6 @@
  *  (mailto:linuxdrivers@attotech.com)
  */
 /*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
-/*
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; version 2 of the License.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  NO WARRANTY
- *  THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
- *  CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
- *  LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
- *  MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
- *  solely responsible for determining the appropriateness of using and
- *  distributing the Program and assumes all risks associated with its
- *  exercise of rights under this Agreement, including but not limited to
- *  the risks and costs of program errors, damage to or loss of data,
- *  programs or equipment, and unavailability or interruption of operations.
- *
- *  DISCLAIMER OF LIABILITY
- *  NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
- *  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
- *  DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
- *  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
- *  TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
- *  USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
- *  HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-/*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
 
 #include "esas2r.h"
 
--- a/drivers/scsi/esas2r/esas2r_int.c
+++ b/drivers/scsi/esas2r/esas2r_int.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  *  linux/drivers/scsi/esas2r/esas2r_int.c
  *      esas2r interrupt handling
@@ -6,41 +7,6 @@
  *  (mailto:linuxdrivers@attotech.com)
  */
 /*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
-/*
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; version 2 of the License.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  NO WARRANTY
- *  THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
- *  CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
- *  LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
- *  MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
- *  solely responsible for determining the appropriateness of using and
- *  distributing the Program and assumes all risks associated with its
- *  exercise of rights under this Agreement, including but not limited to
- *  the risks and costs of program errors, damage to or loss of data,
- *  programs or equipment, and unavailability or interruption of operations.
- *
- *  DISCLAIMER OF LIABILITY
- *  NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
- *  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
- *  DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
- *  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
- *  TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
- *  USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
- *  HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-/*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
 
 #include "esas2r.h"
 
--- a/drivers/scsi/esas2r/esas2r_vda.c
+++ b/drivers/scsi/esas2r/esas2r_vda.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  *  linux/drivers/scsi/esas2r/esas2r_vda.c
  *      esas2r driver VDA firmware interface functions
@@ -6,41 +7,6 @@
  *  (mailto:linuxdrivers@attotech.com)
  */
 /*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
-/*
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; version 2 of the License.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  NO WARRANTY
- *  THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
- *  CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
- *  LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
- *  MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
- *  solely responsible for determining the appropriateness of using and
- *  distributing the Program and assumes all risks associated with its
- *  exercise of rights under this Agreement, including but not limited to
- *  the risks and costs of program errors, damage to or loss of data,
- *  programs or equipment, and unavailability or interruption of operations.
- *
- *  DISCLAIMER OF LIABILITY
- *  NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
- *  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
- *  DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
- *  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
- *  TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
- *  USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
- *  HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-/*=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
 
 #include "esas2r.h"
 

