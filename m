Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE8295303A9
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 16:55:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347607AbiEVOy7 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 10:54:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347589AbiEVOy7 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 10:54:59 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5BF117AA7
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 07:54:58 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653231297;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=99ofAeRj3LdyTjaprMTNaZXI4x4FAPl0aAv/D6nfoj0=;
        b=zH1YBPzVmnqDv0MV54rdIDbj/Tbd6/VlFGlcIdzFyD+b2ezi/2JSv05+VX4SJgRYHRGvAn
        Ai1bI/jv3N6zAMuPUiwCx8rN680IQhZSY2WU131+n5KBW9HXgcCNHFQjljx/LiHVZrVaWc
        J4V+72ZcolkQA2tJX8VKSCzUJ5GQDCyxdBu4p8ebYr1rdBL5HOXDSO/3WrxXSeJ6GuyzEy
        PLeCCivfEbYnsolJVgMfB+OHjcnHXlQe4zia7B/s+SOWnFm+mS3qEPMbq7ZEXJT371P9FG
        g23RZHWRbJjzIKfxpCP8C/zIT4+ovNmAZqQNh0DKS1O2V4cU3Z7jEMpDAr9t7Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653231297;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=99ofAeRj3LdyTjaprMTNaZXI4x4FAPl0aAv/D6nfoj0=;
        b=x+NIV/q3qd6hHYm8bBZ+CBelEngDKyokYKO3yHO3I45x1s/x2rjc6I0NSmphfVMWl8v36z
        boYfMRjPRoG95pBg==
To:     Matthew Wilcox <willy@infradead.org>
Cc:     linux-spdx@vger.kernel.org
Subject: parisc: License cleanup
Message-ID: <165322122487.3770149.883228125657116019.tglx@xen13>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date:   Sun, 22 May 2022 16:54:57 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Matthew!

As you might know we are working on cleaning up the licensing mess in the
kernel and convert it to SPDX license identifiers as the only source of
license information.

Archaeology found unspecific GPL license references, which have been
authored by you.

1)  licensed under the gnu gpl

    arch/parisc/kernel/syscall.S

    https://git.kernel.org/pub/scm/linux/kernel/git/history/history.git/commi=
t/?id=3D9d1ec5d7a336d

Can you please either send cleanup patches for the affected files or
indicate which GPLv2 variant you had in mind and I run it through my
cleanup machinery.

Thanks,

	Thomas

