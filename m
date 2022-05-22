Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28BA85303A8
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 16:54:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347606AbiEVOy6 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 10:54:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347589AbiEVOy6 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 10:54:58 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6990717AA7
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 07:54:57 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653231296;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=w2xbzjO0FxDqAAhUA2rUbVaYjIN2h3SngNgoC2cfT70=;
        b=CnB9iTAnIpzh7JRMXLtfzEf4Aa2RMMTHJlyXmISVSOsYNn5f3xp+PX2Qbsm+dd7hd/n0WV
        0hEzrG0rLdDCQKztAjh75bMne2ky6vsuZt6SwjxCWWYycCLLqDoyRL5Nq9D7q7R5ZzSeY7
        hkWNc9APx+pOLoZ2unGfLzjkv4hZ6L3s8YdnZRpNvLw1ornqL8+Cp2aZV4T1Tz8LDi/NeH
        OOAbsVqlYyg8iFgwaEcu4h95OZX2UnROB660dgw6QsazXvAU48PEjjYxaEb9neKlEa6UkH
        ohJBzXvRXRsjL1SpWBH5ckJRGdnMPfBJeH0sFMn5EkWQoW3bvjNzUk8iqrMvXQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653231296;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=w2xbzjO0FxDqAAhUA2rUbVaYjIN2h3SngNgoC2cfT70=;
        b=fidlWtqoWlAGlSwBvz9FLBVOJM5Jhhl8ppcrTzkhbAZwF+kbidYT+82WkQrx+AjMUs/E9/
        f4etR+oqfWB0FABA==
To:     Theodore Tso <tytso@google.com>
Cc:     linux-spdx@vger.kernel.org
Subject: serial: License cleanup
Message-ID: <165322122344.3770149.16976716743230450811.tglx@xen13>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date:   Sun, 22 May 2022 16:54:55 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Ted!

As you might know we are working on cleaning up the licensing mess in the
kernel and convert it to SPDX license identifiers as the only source of
license information.

Archaeology found unspecific GPL license references, which have been
authored by you.

1) redistribution of this file is permitted under the terms of the gnu
   public license (gpl)

   include/linux/serial.h

   https://git.kernel.org/pub/scm/linux/kernel/git/history/history.git/commit=
/?id=3Dd9723f6c7080c

Can you please either send cleanup patches for the affected files or
indicate which GPLv2 variant you had in mind and I run it through my
cleanup machinery.

Thanks,

	Thomas


