Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0F11540494
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 19:17:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344692AbiFGRRG (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 13:17:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345486AbiFGRRF (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 13:17:05 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C55A5104CA3
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 10:17:04 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654622223;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Ur43At8lMC95I3qhVMxhsQ/i2qPQJGW6FZTEoLnNoiA=;
        b=nCUYb0jyzmcqq6JxxOhgHsRR2q4C/KICYXPIAJMaT+ivRgVkDrTP3kZAnaw65FJOt+vVnC
        unER26eh42hdpObM88DoAzJ+S3cCFbnDYci84sstvzgujBfdCk8iMIVEETWmcT2EpvtSow
        OYSqHpj3TCFWkmj0as+842+mQaLr/cXACxIxI2IP7C0gxBPW3Luhn35+mnYvke4pNBZmCk
        pcKdwehpiYY8bUCDxmrfLGUkBZbDsuuaoA4XVvkD9cUzKznbeNLCb0+BDzCPzFZfWjBCJa
        Z7NnFj+XwXmmBC4QlHtCQXdxCYFN5o0xmCRDjVhDPqe6eNhgAWABM2BwH+RWgw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654622223;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Ur43At8lMC95I3qhVMxhsQ/i2qPQJGW6FZTEoLnNoiA=;
        b=TxiWMSFpngd6j/RWOC3S5brXf7UhSpeVYSHozalMe6Gpv8BC7Si9wyJ04S0UBn67MHDeqA
        0yj+ihmP8LY2kbCw==
To:     Allison Randal <allison@lohutok.net>, linux-spdx@vger.kernel.org
Subject: Re: [patch V2 00/24] The first batch of various GPLv2 boilerplates
 and references
In-Reply-To: <48a1518e-3b44-1bae-5047-981cf7a9f42b@lohutok.net>
References: <20220607131425.436789559@linutronix.de>
 <48a1518e-3b44-1bae-5047-981cf7a9f42b@lohutok.net>
Date:   Tue, 07 Jun 2022 19:17:02 +0200
Message-ID: <87o7z44cmp.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, Jun 07 2022 at 11:06, Allison Randal wrote:
> On 6/7/22 10:11, Thomas Gleixner wrote:
>> 
>>       - Collected Reviewed-by tags as appropriate. Thanks Allison!
>
> Thanks for rolling those in, made the re-review simpler.
>
>>       - Split the v1 patches 3, 4 and 10 into parts so they fit into the
>>         size limit of the mailing list. Those are now patches 2-6 and 12-13
>
> We might still have a size limit problem, I received the v2 patches 2-4 
> and 12-13, but not 5-6.

Dammit.

> Can we increase the size limit for the list?

Let me ask.

Thanks,

        tglx
