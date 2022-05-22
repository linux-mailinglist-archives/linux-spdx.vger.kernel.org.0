Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB64A5303A3
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 16:54:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347548AbiEVOyu (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 10:54:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244590AbiEVOyu (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 10:54:50 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DD5C17A9B
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 07:54:49 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653231288;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=mWrYsc8ZGFQ0+6aJdfc53P3nhhLRy0Af/K1Qxm1gbic=;
        b=VWEwhthm+yKv5YwLV0+7Lz9qJAmESFa2Nq4LPbnm7COqKQlBSOY+ww3BS8MpIajLA0qJOD
        ai8n4k/dh/IHhD52bK5axAN+bXPbJFo81q3WwuQM4qe4BhrF1cj5vKWQqexyoYdL5Ri+c0
        VnwLHDH/0cVf5O13GIRlK4jzOyy1IWYAyvnO0kQvCVvlLGocTMPfyS/amfWy3qo+aX6BKI
        PDeja2167gsB2yi82z+9/Ua9shFy/OWv0dSzzR3ypXMWH5rFFWxttbkwNmakEdahY2bCFD
        mpF3knxORAXOyGC1fRUbBCbzs+w0fwtRZBRSqWu19It7Z8RbIArb3guFVBFbIg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653231288;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=mWrYsc8ZGFQ0+6aJdfc53P3nhhLRy0Af/K1Qxm1gbic=;
        b=h7yEAJ+EG9JxUbaIlhysBOz80/LVQiURZH07Twi4xZBB31D8dljAk3UyYnlEBigs6SgR8u
        /RDxDHmqxoM+yjBw==
To:     Ingo Molnar <mingo@kernel.org>
Cc:     linux-spdx@vger.kernel.org
Subject: locking: License cleanup
Message-ID: <165322121626.3770149.2229076093725265648.tglx@xen13>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
Date:   Sun, 22 May 2022 16:54:47 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Ingo!

As you might know we are working on cleaning up the licensing mess in the
kernel and convert it to SPDX license identifiers as the only source of
license information.

Archaeology found the following unspecific GPL license references, which
have been authored by you:

1) released under the general public license (gpl)

   include/linux/rwlock.h
   include/linux/rwlock_api_smp.h
   include/linux/rwlock_types.h
   include/linux/spinlock_api_smp.h
   include/linux/spinlock_api_up.h
   include/linux/spinlock_types.h
   include/linux/spinlock_types_up.h
   include/linux/spinlock_up.h
   kernel/locking/mutex-debug.c
   kernel/locking/spinlock_debug.c

Can you please either send cleanup patches for the affected files or
indicate which GPLv2 variant you had in mind and I run it through my
cleanup machinery.

Thanks,

	Thomas

