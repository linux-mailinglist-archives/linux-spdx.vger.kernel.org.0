Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1D1353EF41
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:11:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232897AbiFFULK (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:11:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233270AbiFFULC (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:11:02 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49032113F9A
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:57 -0700 (PDT)
Message-ID: <20220606200811.534137499@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546256;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=G9+nOQCFLLA2fVlvMbLFYhvca/v092u8BLa+up+mUgo=;
        b=wT260lTup9F6Lmq4Xj1PVcM7XRL4aTwLD6ZMHB7cvRL+ozqSzAXXAMtGOfcpk4uD4kE7fV
        nfVB9rBy4SsgTRR/KEB6RYHje9bcacayoI8l4U/lsOcNgD2taTeAeD1xS+Cbwv5QjbHhYh
        DiUbDoxv7TEzoX3cDNGBU1oK7C28FFXK9rOSFYvjrLgiZgprUbdGATb6aIcUs+BavUJV7r
        FF144GEzduOLleSSimcsCbjJEUpXyj0E2wuFm3tJvyxWAsvIb1Gv1MCl2c36Z2e41O69+P
        SbMh/QyDLPNAkoC9pl3S25O1o6FlYle7IHFVxqf83gLHO/8gTVecfFISWqlDYw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546256;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=G9+nOQCFLLA2fVlvMbLFYhvca/v092u8BLa+up+mUgo=;
        b=HTe9T9dRocEcetUpYQmzZg/wWZMDHmtr9WW/3XId9j28K6CfXJk2BcEzhV9uWAYBV2u6IB
        m0pXBpuwF4ErF5Bw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 25/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_409.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:55 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Based on the normalized pattern:

    this program is free software you can redistribute it and/or modify it
    under the terms of the gnu general public license version 2 as
    published by the free software foundation  the software is provided as
    is without warranty of any kind express or implied including but not
    limited to the warranties of merchantability fitness for a particular
    purpose and noninfringement of third party rights in no event shall
    the copyright holder(s) and author(s) be liable for any claim or any
    special indirect or consequential damages or any damages whatsoever
    resulting from loss of use data or profits whether in an action of
    contract negligence or other tortious action arising out of or in
    connection with the use or performance of this software  all liability
    including liability for infringement of any patents copyrights
    trademarks or other rights relating to use of this software is
    disclaimed

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/net/bluetooth/bluetooth.h |   17 +----------------
 include/net/bluetooth/hci.h       |   17 +----------------
 include/net/bluetooth/hci_core.h  |   17 +----------------
 include/net/bluetooth/hci_mon.h   |   17 +----------------
 include/net/bluetooth/hci_sock.h  |   17 +----------------
 include/net/bluetooth/l2cap.h     |   17 +----------------
 include/net/bluetooth/mgmt.h      |   17 +----------------
 include/net/bluetooth/rfcomm.h    |   17 +----------------
 include/net/bluetooth/sco.h       |   17 +----------------
 net/bluetooth/bnep/netdev.c       |   17 +----------------
 net/bluetooth/bnep/sock.c         |   17 +----------------
 net/bluetooth/cmtp/capi.c         |   17 +----------------
 net/bluetooth/cmtp/cmtp.h         |   17 +----------------
 net/bluetooth/cmtp/sock.c         |   17 +----------------
 net/bluetooth/ecdh_helper.c       |   18 +-----------------
 net/bluetooth/ecdh_helper.h       |   18 +-----------------
 net/bluetooth/hci_conn.c          |   17 +----------------
 net/bluetooth/hci_core.c          |   17 +----------------
 net/bluetooth/hci_debugfs.c       |   17 +----------------
 net/bluetooth/hci_debugfs.h       |   17 +----------------
 net/bluetooth/hci_event.c         |   17 +----------------
 net/bluetooth/hci_request.c       |   17 +----------------
 net/bluetooth/hci_request.h       |   17 +----------------
 net/bluetooth/hci_sock.c          |   17 +----------------
 net/bluetooth/hidp/hidp.h         |   17 +----------------
 net/bluetooth/hidp/sock.c         |   17 +----------------
 net/bluetooth/l2cap_core.c        |   17 +----------------
 net/bluetooth/l2cap_sock.c        |   17 +----------------
 net/bluetooth/lib.c               |   17 +----------------
 net/bluetooth/mgmt.c              |   17 +----------------
 net/bluetooth/mgmt_util.c         |   17 +----------------
 net/bluetooth/mgmt_util.h         |   17 +----------------
 net/bluetooth/rfcomm/sock.c       |   17 +----------------
 net/bluetooth/rfcomm/tty.c        |   17 +----------------
 net/bluetooth/sco.c               |   17 +----------------
 net/bluetooth/selftest.c          |   17 +----------------
 net/bluetooth/selftest.h          |   17 +----------------
 net/bluetooth/smp.c               |   17 +----------------
 net/bluetooth/smp.h               |   17 +----------------
 39 files changed, 39 insertions(+), 626 deletions(-)

--- a/include/net/bluetooth/bluetooth.h
+++ b/include/net/bluetooth/bluetooth.h
@@ -1,25 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2000-2001 Qualcomm Incorporated
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #ifndef __BLUETOOTH_H
--- a/include/net/bluetooth/hci.h
+++ b/include/net/bluetooth/hci.h
@@ -1,25 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2000-2001 Qualcomm Incorporated
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #ifndef __HCI_H
--- a/include/net/bluetooth/hci_core.h
+++ b/include/net/bluetooth/hci_core.h
@@ -1,25 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (c) 2000-2001, 2010, Code Aurora Forum. All rights reserved.
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #ifndef __HCI_CORE_H
--- a/include/net/bluetooth/hci_mon.h
+++ b/include/net/bluetooth/hci_mon.h
@@ -1,24 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
 
    Copyright (C) 2011-2012  Intel Corporation
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #ifndef __HCI_MON_H
--- a/include/net/bluetooth/hci_sock.h
+++ b/include/net/bluetooth/hci_sock.h
@@ -1,25 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2000-2001 Qualcomm Incorporated
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #ifndef __HCI_SOCK_H
--- a/include/net/bluetooth/l2cap.h
+++ b/include/net/bluetooth/l2cap.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2000-2001 Qualcomm Incorporated
@@ -6,22 +7,6 @@
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #ifndef __L2CAP_H
--- a/include/net/bluetooth/mgmt.h
+++ b/include/net/bluetooth/mgmt.h
@@ -1,25 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
 
    Copyright (C) 2010  Nokia Corporation
    Copyright (C) 2011-2012  Intel Corporation
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #define MGMT_INDEX_NONE			0xFFFF
--- a/include/net/bluetooth/rfcomm.h
+++ b/include/net/bluetooth/rfcomm.h
@@ -1,24 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    RFCOMM implementation for Linux Bluetooth stack (BlueZ)
    Copyright (C) 2002 Maxim Krasnyansky <maxk@qualcomm.com>
    Copyright (C) 2002 Marcel Holtmann <marcel@holtmann.org>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #include <linux/refcount.h>
--- a/include/net/bluetooth/sco.h
+++ b/include/net/bluetooth/sco.h
@@ -1,25 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2000-2001 Qualcomm Incorporated
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #ifndef __SCO_H
--- a/net/bluetooth/bnep/netdev.c
+++ b/net/bluetooth/bnep/netdev.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BNEP implementation for Linux Bluetooth stack (BlueZ).
    Copyright (C) 2001-2002 Inventel Systemes
@@ -7,22 +8,6 @@
 
    Copyright (C) 2002 Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #include <linux/etherdevice.h>
--- a/net/bluetooth/bnep/sock.c
+++ b/net/bluetooth/bnep/sock.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BNEP implementation for Linux Bluetooth stack (BlueZ).
    Copyright (C) 2001-2002 Inventel Systemes
@@ -6,22 +7,6 @@
 
    Copyright (C) 2002 Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #include <linux/compat.h>
--- a/net/bluetooth/cmtp/capi.c
+++ b/net/bluetooth/cmtp/capi.c
@@ -1,23 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    CMTP implementation for Linux Bluetooth stack (BlueZ).
    Copyright (C) 2002-2003 Marcel Holtmann <marcel@holtmann.org>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #include <linux/export.h>
--- a/net/bluetooth/cmtp/cmtp.h
+++ b/net/bluetooth/cmtp/cmtp.h
@@ -1,23 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    CMTP implementation for Linux Bluetooth stack (BlueZ).
    Copyright (C) 2002-2003 Marcel Holtmann <marcel@holtmann.org>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #ifndef __CMTP_H
--- a/net/bluetooth/cmtp/sock.c
+++ b/net/bluetooth/cmtp/sock.c
@@ -1,23 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    CMTP implementation for Linux Bluetooth stack (BlueZ).
    Copyright (C) 2002-2003 Marcel Holtmann <marcel@holtmann.org>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #include <linux/export.h>
--- a/net/bluetooth/ecdh_helper.c
+++ b/net/bluetooth/ecdh_helper.c
@@ -1,24 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * ECDH helper functions - KPP wrappings
  *
  * Copyright (C) 2017 Intel Corporation
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation;
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
- * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
- * IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
- * CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
- * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
- * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
- *
- * ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
- * COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
- * SOFTWARE IS DISCLAIMED.
  */
 #include "ecdh_helper.h"
 
--- a/net/bluetooth/ecdh_helper.h
+++ b/net/bluetooth/ecdh_helper.h
@@ -1,24 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * ECDH helper functions - KPP wrappings
  *
  * Copyright (C) 2017 Intel Corporation
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation;
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
- * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
- * IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
- * CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
- * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
- * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
- *
- * ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
- * COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
- * SOFTWARE IS DISCLAIMED.
  */
 #include <crypto/kpp.h>
 #include <linux/types.h>
--- a/net/bluetooth/hci_conn.c
+++ b/net/bluetooth/hci_conn.c
@@ -1,25 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (c) 2000-2001, 2010, Code Aurora Forum. All rights reserved.
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 /* Bluetooth HCI connection handling. */
--- a/net/bluetooth/hci_core.c
+++ b/net/bluetooth/hci_core.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2000-2001 Qualcomm Incorporated
@@ -5,22 +6,6 @@
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 /* Bluetooth HCI core. */
--- a/net/bluetooth/hci_debugfs.c
+++ b/net/bluetooth/hci_debugfs.c
@@ -1,24 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
 
    Copyright (C) 2014 Intel Corporation
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #include <linux/debugfs.h>
--- a/net/bluetooth/hci_debugfs.h
+++ b/net/bluetooth/hci_debugfs.h
@@ -1,23 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2014 Intel Corporation
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #if IS_ENABLED(CONFIG_BT_DEBUGFS)
--- a/net/bluetooth/hci_event.c
+++ b/net/bluetooth/hci_event.c
@@ -1,25 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (c) 2000-2001, 2010, Code Aurora Forum. All rights reserved.
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 /* Bluetooth HCI event handling. */
--- a/net/bluetooth/hci_request.c
+++ b/net/bluetooth/hci_request.c
@@ -1,24 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
 
    Copyright (C) 2014 Intel Corporation
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #include <linux/sched/signal.h>
--- a/net/bluetooth/hci_request.h
+++ b/net/bluetooth/hci_request.h
@@ -1,23 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2014 Intel Corporation
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #include <asm/unaligned.h>
--- a/net/bluetooth/hci_sock.c
+++ b/net/bluetooth/hci_sock.c
@@ -1,25 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2000-2001 Qualcomm Incorporated
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 /* Bluetooth HCI sockets. */
--- a/net/bluetooth/hidp/hidp.h
+++ b/net/bluetooth/hidp/hidp.h
@@ -1,23 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    HIDP implementation for Linux Bluetooth stack (BlueZ).
    Copyright (C) 2003-2004 Marcel Holtmann <marcel@holtmann.org>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #ifndef __HIDP_H
--- a/net/bluetooth/hidp/sock.c
+++ b/net/bluetooth/hidp/sock.c
@@ -1,23 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    HIDP implementation for Linux Bluetooth stack (BlueZ).
    Copyright (C) 2003-2004 Marcel Holtmann <marcel@holtmann.org>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #include <linux/compat.h>
--- a/net/bluetooth/l2cap_core.c
+++ b/net/bluetooth/l2cap_core.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2000-2001 Qualcomm Incorporated
@@ -8,22 +9,6 @@
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 /* Bluetooth L2CAP core. */
--- a/net/bluetooth/l2cap_sock.c
+++ b/net/bluetooth/l2cap_sock.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2000-2001 Qualcomm Incorporated
@@ -7,22 +8,6 @@
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 /* Bluetooth L2CAP sockets. */
--- a/net/bluetooth/lib.c
+++ b/net/bluetooth/lib.c
@@ -1,25 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2000-2001 Qualcomm Incorporated
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 /* Bluetooth kernel library. */
--- a/net/bluetooth/mgmt.c
+++ b/net/bluetooth/mgmt.c
@@ -1,25 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
 
    Copyright (C) 2010  Nokia Corporation
    Copyright (C) 2011-2012 Intel Corporation
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 /* Bluetooth HCI Management interface */
--- a/net/bluetooth/mgmt_util.c
+++ b/net/bluetooth/mgmt_util.c
@@ -1,24 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
 
    Copyright (C) 2015  Intel Corporation
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #include <asm/unaligned.h>
--- a/net/bluetooth/mgmt_util.h
+++ b/net/bluetooth/mgmt_util.h
@@ -1,23 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2015  Intel Coropration
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 struct mgmt_pending_cmd {
--- a/net/bluetooth/rfcomm/sock.c
+++ b/net/bluetooth/rfcomm/sock.c
@@ -1,24 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    RFCOMM implementation for Linux Bluetooth stack (BlueZ).
    Copyright (C) 2002 Maxim Krasnyansky <maxk@qualcomm.com>
    Copyright (C) 2002 Marcel Holtmann <marcel@holtmann.org>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 /*
--- a/net/bluetooth/rfcomm/tty.c
+++ b/net/bluetooth/rfcomm/tty.c
@@ -1,24 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    RFCOMM implementation for Linux Bluetooth stack (BlueZ).
    Copyright (C) 2002 Maxim Krasnyansky <maxk@qualcomm.com>
    Copyright (C) 2002 Marcel Holtmann <marcel@holtmann.org>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 /*
--- a/net/bluetooth/sco.c
+++ b/net/bluetooth/sco.c
@@ -1,25 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2000-2001 Qualcomm Incorporated
 
    Written 2000,2001 by Maxim Krasnyansky <maxk@qualcomm.com>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 /* Bluetooth SCO sockets. */
--- a/net/bluetooth/selftest.c
+++ b/net/bluetooth/selftest.c
@@ -1,24 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
 
    Copyright (C) 2014 Intel Corporation
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #include <linux/debugfs.h>
--- a/net/bluetooth/selftest.h
+++ b/net/bluetooth/selftest.h
@@ -1,23 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2014 Intel Corporation
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #if IS_ENABLED(CONFIG_BT_SELFTEST) && IS_MODULE(CONFIG_BT)
--- a/net/bluetooth/smp.c
+++ b/net/bluetooth/smp.c
@@ -1,23 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2011 Nokia Corporation and/or its subsidiary(-ies).
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #include <linux/debugfs.h>
--- a/net/bluetooth/smp.h
+++ b/net/bluetooth/smp.h
@@ -1,23 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
    BlueZ - Bluetooth protocol stack for Linux
    Copyright (C) 2011 Nokia Corporation and/or its subsidiary(-ies).
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License version 2 as
-   published by the Free Software Foundation;
-
-   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-   OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
-   IN NO EVENT SHALL THE COPYRIGHT HOLDER(S) AND AUTHOR(S) BE LIABLE FOR ANY
-   CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES
-   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
-   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
-   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-
-   ALL LIABILITY, INCLUDING LIABILITY FOR INFRINGEMENT OF ANY PATENTS,
-   COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS, RELATING TO USE OF THIS
-   SOFTWARE IS DISCLAIMED.
 */
 
 #ifndef __SMP_H

