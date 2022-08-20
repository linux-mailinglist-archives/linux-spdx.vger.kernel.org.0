Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0C2D59AAD8
	for <lists+linux-spdx@lfdr.de>; Sat, 20 Aug 2022 05:11:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242928AbiHTDKy (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 19 Aug 2022 23:10:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233564AbiHTDKy (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Fri, 19 Aug 2022 23:10:54 -0400
Received: from gandalf.ozlabs.org (mail.ozlabs.org [IPv6:2404:9400:2221:ea00::3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D20BED7D1B
        for <linux-spdx@vger.kernel.org>; Fri, 19 Aug 2022 20:10:50 -0700 (PDT)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.ozlabs.org (Postfix) with ESMTPSA id 4M8kCR6KHTz4x1d;
        Sat, 20 Aug 2022 13:10:43 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ellerman.id.au;
        s=201909; t=1660965044;
        bh=VwNw6EZalUWQbeHPTHkC3NV0qlBnZ42I9JJo3ZONXB4=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
        b=k1xq5LiW3h2+xEFFGDP9ievLpuxz6DciTi4h5IYhmIChna2/fDmIv4Yxk2h8t4+Jv
         L7c1M7aPiXsoGNfcYHftPGJsCvxaYI5bJNTxnJA2aWDToKG7I7eMqYveze/rE1GJgA
         4XBF9E/cGwgm5UQCvpKNzn4iCS2kvLNbM/OTIkAAScDWQFxAdZ4gHq1dXctQzN+ub7
         ok+xgpbWnaXMNABgrUwevMiAYalfA8vGz3clV7aZ9eWAqLtrJdWWCPMG6Bn/tFmOEd
         fiHYN7dyPyk0KgiALNYqcR9BkVkN6YjEsPB751EmtjrR2CS0VUj6i2W2/MVtYVZU8f
         6wt8b4VCRNEbA==
From:   Michael Ellerman <mpe@ellerman.id.au>
To:     Greg KH <gregkh@linuxfoundation.org>
Cc:     linuxppc-dev@lists.ozlabs.org, linux-spdx@vger.kernel.org,
        tglx@linutronix.de
Subject: Re: [PATCH] powerpc/boot: Convert more files to use SPDX tags
In-Reply-To: <Yv90ZxeQbf7smJCH@kroah.com>
References: <20220819110430.433984-1-mpe@ellerman.id.au>
 <Yv90ZxeQbf7smJCH@kroah.com>
Date:   Sat, 20 Aug 2022 13:10:35 +1000
Message-ID: <87zgfzlidw.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Greg KH <gregkh@linuxfoundation.org> writes:
> On Fri, Aug 19, 2022 at 09:04:30PM +1000, Michael Ellerman wrote:
>> These files are all plain GPL 2.0, with a second sentence about being
>> licensed as-is.
>> 
>> Similar to the rule in commit 577b61cee5b2 ("treewide: Replace GPLv2
>> boilerplate/reference with SPDX - gpl-2.0_398.RULE").
>> 
>> Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
>> ---
>>  arch/powerpc/boot/44x.h          | 5 +----
>>  arch/powerpc/boot/4xx.h          | 5 +----
>>  arch/powerpc/boot/ops.h          | 6 ++----
>>  arch/powerpc/boot/serial.c       | 6 ++----
>>  arch/powerpc/boot/simple_alloc.c | 6 ++----
>>  5 files changed, 8 insertions(+), 20 deletions(-)
>
>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Thanks.

> Do you want this to go through the SPDX tree, or will you route it
> through the normal ppc tree?  Either is fine with me, just let me know
> if you want me to take it in the SPDX tree.

I'll take it via powerpc, less likely to generate conflicts that way.

cheers
