Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE5A05303A7
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 16:54:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347562AbiEVOy5 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 10:54:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347589AbiEVOy4 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 10:54:56 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D124317AA8
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 07:54:55 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653231294;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=vqPXs+1AWcQyl211C6hX1tIG4+FOykbH+nhPAW5UKmg=;
        b=dI3LtbcBdiLfEuBc6QSaEu8JnG7LQC5wRZqdtR1xhwpe8i+/kHk3rveaY8MoOk4MplwTk5
        NQeMlpTKtlIiRKZ1g4jtP8r7tJKKogq5RTs5pyeMuEyO6f1rcN+DGcvq161rE58pMcKkMb
        x8PCWOetKyKsfX/dj0SPDnfHLXRipj8I+9jMV8LCMturT/K1HJR+ifhNKtsm0c72JGB5bD
        Wjq1SaK1qfMIM6sY8K6b9rIfYEZQo+JPtDFmaZstJHZl/UO9cCIeTPisROgBgpgLs2rX+B
        m/6us0ypshsedXnWZsLLWVXd4ruTov1UfFQpOWCMpiqGC1HEVI6hWR2NbMAtYw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653231294;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=vqPXs+1AWcQyl211C6hX1tIG4+FOykbH+nhPAW5UKmg=;
        b=A300bRihRPk/BZlkx3+UybMTMDdglHtvFsENUDeBhii6dYeBwrwqrFYirzYgMazNIpMcTc
        lY59MFufpxS2QoDw==
To:     Manfred Spraul <manfred@colorfullife.com>
Cc:     linux-spdx@vger.kernel.org
Subject: ipc: License cleanup
Message-ID: <165322122199.3770149.6631395213068803310.tglx@xen13>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date:   Sun, 22 May 2022 16:54:54 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Manfred!

As you might know we are working on cleaning up the licensing mess in the
kernel and convert it to SPDX license identifiers as the only source of
license information.

Archaeology found unspecific GPL license references, which have been
authored by you.

1) this file is released under the gpl

     ipc/mqueue.c

     https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/=
?id=3Dbe94d44e818a5

Can you please either send cleanup patches for the affected files or
indicate which GPLv2 variant you had in mind and I run it through my
cleanup machinery.

Thanks,

	Thomas

