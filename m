Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BEDA53EF69
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:18:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233231AbiFFUR7 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:17:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233260AbiFFURx (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:17:53 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DE14646C
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:17:48 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546667;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=w0FJ5oHMj5MRMg3bM6dx0yIo0cLj/uZP8Mueff8aHi8=;
        b=NnB4zeJOgSd5wNVgkfaRRk+ZjsdMUDMqPSHyCm3AgnLw+ghIr+8oFgYens6Q6AzPawZeag
        5/dhu2TID5qN25q0tks/Pe1OT+tSlGbz6pga3N0nvP49snTCbGEF+Sp8jh4sVXz9q/PInS
        LT5I/asxzu/8vn/Vsie+LaGZRTG5VvKXYM0NzsaMB6f8ClOHysN9WwTYEsXJg5lZLXL0/C
        zq6a2lMiws+WD3oXJxlT4TdirDtR4g+wBcATqeB191N6mBiVQD1RUBfnQuvQBeFQ8/LiA8
        eMVtNI5qbTJWxPaEyq9IhElSQ8cPYOW66FW3wFTwMDhs2knVKJDVTzjS/5wo/A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546667;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=w0FJ5oHMj5MRMg3bM6dx0yIo0cLj/uZP8Mueff8aHi8=;
        b=U3NMER/vkyrJCIetlmw9Qi96inYhpE90/pbssuSE7q8LBeU1lHb+lbnXAAwbaGl+jeLcxa
        opS6Nex58Lst0HDQ==
To:     Richard Fontana <rfontana@redhat.com>
Cc:     linux-spdx@vger.kernel.org
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
In-Reply-To: <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
References: <20220606195512.584745712@linutronix.de>
 <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
Date:   Mon, 06 Jun 2022 22:17:46 +0200
Message-ID: <87bkv55yxh.ffs@tglx>
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

On Mon, Jun 06 2022 at 16:11, Richard Fontana wrote:
> On Mon, Jun 6, 2022 at 3:58 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>> Based on the normalized pattern:
>>
>>     this program is free software you can redistribute it and/or modify it
>>     under the terms of version 2 of the gnu general public license as
>>     published by the free software foundation  this program is distributed
>>     in the hope that it will be useful all express or implied conditions
>>     representations and warranties including any implied warranty of
>>     merchantability fitness for a particular purpose or non-infringement
>>     are disclaimed except to the extent that such disclaimers are held to
>>     be legally invalid see the gnu general public license for more details
>>     a copy of which can be found in the file copying included with this
>>     package
>
> I forget how we dealt with things like this in the initial large batch
> some years ago but I remember raising the concern that some bespoke
> license notices contained disclaimer language that was arguably
> materially different in some way from what is found in GPLv2 itself.
> This might be another example. I think in some such cases we at least
> considered preserving the nonstandard disclaimer language.

IIRC, there was no real conclusion aside of dealing with this later :)

One way would be to talk to the original author (if still reachable) and
ask for clarification/permission to remove it. In this case Broadcom.

Thanks,

        tglx
