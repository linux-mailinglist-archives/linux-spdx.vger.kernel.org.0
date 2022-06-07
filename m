Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83114540219
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 17:06:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233856AbiFGPG6 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 11:06:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343863AbiFGPGM (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 11:06:12 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63BAFF5D31
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:06:11 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id B1BFB197640;
        Tue,  7 Jun 2022 11:06:10 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=hPud+UMe1yZf
        p7b890i2JcI8GuM8D9IFPm1kUS3NKLU=; b=E8V6DcNcSEH3MCzLT5efZwxHoVVN
        6FSPZqTsgWXLH74tUFCDqzk5/g5LKch2i+CLJoLOk5oWH5LfdY3hS9KMnFrgPhyT
        0VONLKACIO+xE3I1L1BRInYE2xqJ8i2dnaYC+RmDrxr1DGsKwj5XoTJgzkivU/nG
        Mx7mYVbmzbhg5vM=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id AA9AD19763E;
        Tue,  7 Jun 2022 11:06:10 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=hPud+UMe1yZfp7b890i2JcI8GuM8D9IFPm1kUS3NKLU=; b=q4e0dsIJ5ZAx+KptDguS0UNAAouT1M1zL0+czsr99uOjyYxn4jp5Wt+XB6XHEv9E6Iq61hUYpXUmK5AvbkFe110OH9u66lCC4uV0xe7tpmg4Ja5IL0RKaKGO3yfNgPvG+o/dG8gDiY019eZbkOqjRuEwvlgGCDz9cKSz9nUaTW8=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 54DC419763C;
        Tue,  7 Jun 2022 11:06:06 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <48a1518e-3b44-1bae-5047-981cf7a9f42b@lohutok.net>
Date:   Tue, 7 Jun 2022 11:06:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch V2 00/24] The first batch of various GPLv2 boilerplates
 and references
Content-Language: en-US
To:     Thomas Gleixner <tglx@linutronix.de>, linux-spdx@vger.kernel.org
References: <20220607131425.436789559@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220607131425.436789559@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 5B2F49A2-E673-11EC-B213-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_CSS autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 6/7/22 10:11, Thomas Gleixner wrote:
> 
>       - Collected Reviewed-by tags as appropriate. Thanks Allison!

Thanks for rolling those in, made the re-review simpler.

>       - Split the v1 patches 3, 4 and 10 into parts so they fit into the
>         size limit of the mailing list. Those are now patches 2-6 and 12-13

We might still have a size limit problem, I received the v2 patches 2-4 
and 12-13, but not 5-6.

Can we increase the size limit for the list?

Allison
