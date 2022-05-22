Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 538D85303A1
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 16:54:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231316AbiEVOys (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 10:54:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346796AbiEVOyr (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 10:54:47 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84D8C17A9B
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 07:54:46 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653231285;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=KwJ12T0yJWUUU2U+LxFlFOWkIFXAIFxjgoGDxqevtMc=;
        b=cqCQk4UZjZbGcVSjVxQMZTFYREapZK5Qpm1yPtal8O2hAgZHXIlIH4JGtdAPIm0S9w9PgS
        sbst2MBe7yQiyPaycCORx93HgZO6yFJtHW2tED0sZ+PjdXkElh9GXbRlBAJrQ8cAV+QtgX
        q9whtFweHcmXciG5kcGTCJ/JHjXqDcBfuXMHxEYH4TE26+avY0a1SPvqXTPiofpphuHIgr
        ZTG9vTIRSKtsMa12T8mwLRFi0siy4RYbP2N9FFDq/vkQyis/abVUiu/lndJloREU7nHWrR
        yqzlL0Y5+T/NDuBmkGRHvLo+30MURIwv02tQS5UNgfZT4wh1K3V/h7vmko1/Yg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653231285;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=KwJ12T0yJWUUU2U+LxFlFOWkIFXAIFxjgoGDxqevtMc=;
        b=WZT0hEerVSMGoRIzbN7dG7CKBY4PByr8n9zdTftnlgtZTd8DHi7wvq5LizBH0XsfURULN+
        DzRrgCnfx8WBB+Dg==
To:     Len Brown <lenb@kernel.org>
Cc:     linux-spdx@vger.kernel.org
Subject: cpuidle: License cleanup
Message-ID: <165322121339.3770149.394529591081907451.tglx@xen13>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
Date:   Sun, 22 May 2022 16:54:44 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Len!

As you might know we are working on cleaning up the licensing mess in the
kernel and convert it to SPDX license identifiers as the only source of
license information.

Archaeology found unspecific GPL license references, which have been
authored/comitted by you.

Pattern: This code is licenced under the GPL

    drivers/cpuidle/cpuidle.c
    drivers/cpuidle/driver.c
    drivers/cpuidle/governor.c
    drivers/cpuidle/sysfs.c
    drivers/cpuidle/governors/ladder.c
    include/linux/cpuidle.h

Can you please either send cleanup patches for the affected files or
indicate which GPLv2 variant you had in mind and I run it through my
cleanup machinery.

Thanks,

	Thomas

