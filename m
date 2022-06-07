Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B260753FE04
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 13:53:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243284AbiFGLxj (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 07:53:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243391AbiFGLxQ (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 07:53:16 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BD014E39D
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 04:52:34 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id DED7919604E
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:52:33 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=08QTCwgeJZ1q
        ay+IMRncM9jv8XLDbvMDFDKFFh1S4EE=; b=c8PTFb2xPjo5CJDBbr15QFxSqEBW
        ZYKb9iTWKG9FG1E0f1Ne7mS0FBXMIko5j32Amm1ar4dP9HtCzGCd4rwvWLGf7ya5
        UNd04lVEVZwLmLVhbyj8q7jFbV8arSFqa2J2txV1UYVg5cctdvgRShbDIOocZO4m
        B//TWTcY10BFHkM=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id D8F8319604D
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:52:33 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=08QTCwgeJZ1qay+IMRncM9jv8XLDbvMDFDKFFh1S4EE=; b=CtjHCrBbKeucKFsHBF8SLsViqdESa9TXCwRXfud4f6uSfnJG5Q/haVo+z35pu/Wg8VJIKFAzIDyKQEr8QklGrTH/zi9HtWi5zUe8HXnYtLp6eSeaqrRVzXhxb3hpxt7Xhr1cBAj2EqUWUM33zwlc5WKL6BlwQo5fqJnQ+bnQQoU=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id C11A619604C
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:52:29 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <3025df23-d380-8665-21ec-ab3a8a760045@lohutok.net>
Date:   Tue, 7 Jun 2022 07:52:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 16/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_318.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200811.017591605@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200811.017591605@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 4F17300A-E658-11EC-9115-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_CSS autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 6/6/22 16:10, Thomas Gleixner wrote:
> Based on the normalized pattern:
> 
>      this program is free software you can redistribute it and/or modify it
>      under the terms of the gnu general public license as published by the
>      free software foundation version 2  this program is distributed as is
>      without any warranty of any kind whether express or implied without
>      even the implied warranty of merchantability or fitness for a
>      particular purpose see the gnu general public license for more details
>      you should have received a copy of the gnu general public license
>      along with this program if not write to the free software foundation
>      inc 59 temple place suite 330 boston ma 02111-1307 usa
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
