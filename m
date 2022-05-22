Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C79A5303A2
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 16:54:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346796AbiEVOys (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 10:54:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347548AbiEVOys (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 10:54:48 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 123AE17A9B
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 07:54:48 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653231286;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=keNk9FDzlthqAJDDqqWFvDapbu/vqkKHMxP+t19USlQ=;
        b=cM10VzNY/pugqnmj7xZQk/TfGZdlG22GWyuTuHqPDn04KeFo0V0mbWCVPEq7UTqagmm648
        2fI4e3e9gadpzQUiC43JVumRsknfKsrwRX71gPzTdmvvZPYCiQFJn65I0pqH825SCBH0Bn
        mbKw64Dt+PcO283bASKzgIwaeP3+mEA/mvZTwhPXbMuu7/U01mE+JmKbsF6Yp6Ur+WYzv/
        r8liglqB485kCN4W0iBvWKdZeC/gm1l4UVLoqlTrbolT57Hk50p/1brQ70kSoKehkAnTcl
        QRl0i25KJnrCA5VkNjUUF4QIeqMwnx89Qo1TQaPjgZtGpAsulz6II6CDqO8mYA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653231286;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=keNk9FDzlthqAJDDqqWFvDapbu/vqkKHMxP+t19USlQ=;
        b=tyGiba/Wg0k9cBcX/uHBLfVVt88MfVPFFn1dAqGPn4rBjwnGwmjV9v71YmkPUurAbFsmCw
        N9CPVs5V5UEyEjBw==
To:     Linus Torvalds <torvalds@linux-foundation.org>
Cc:     linux-spdx@vger.kernel.org
Subject: mm, [c]ramfs: License cleanup
Message-ID: <165322121483.3770149.17793045179048278100.tglx@xen13>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
Date:   Sun, 22 May 2022 16:54:46 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Linus!

As you might know we are working on cleaning up the licensing mess in the
kernel and convert it to SPDX license identifiers as the only source of
license information.

Archaeology found unspecific GPL license references, which have been
authored by you.

1) this file is released under the gpl

   fs/cramfs/inode.c
   fs/ramfs/file-mmu.c
   fs/ramfs/inode.c
   mm/shmem.c
   mm/memfd.c (mm/shmem.c got split and the GPL reference got copied) 

Can you please either send cleanup patches for the affected files or
indicate which GPLv2 variant you had in mind and I run it through my
cleanup machinery.

Thanks,

	Thomas



