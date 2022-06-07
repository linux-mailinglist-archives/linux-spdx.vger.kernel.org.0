Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82039540257
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 17:24:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344029AbiFGPY2 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 11:24:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343998AbiFGPY0 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 11:24:26 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C81A413DC8
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:24:24 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 7C11C1978F8
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 11:24:23 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=SY7ZIPUX6S0e
        gWWAjG8F08gqhlx+sDUapA9FGsiSL3A=; b=py0KXx3bjFOTD/IY9kG+cFV8fjUc
        ztP0LWvlpZbQiV3lfPr6zmIOcACADIfw5IQVkXGAdf/7UVEHT0CumyrdzO3gsn/r
        FSX32G/QRlDwWng1mAF6pyeSjcbSNaw8fTVBMGfKJRjdNGiteD2364W2m4PAWArD
        hVmBbcCQMWoPkaM=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 75F571978F7
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 11:24:23 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=SY7ZIPUX6S0egWWAjG8F08gqhlx+sDUapA9FGsiSL3A=; b=An4ruBI41tUeZJaWTqhx/nNrxZbew+DS6oUtPW2xzOR/K5hLn2pzth9rMyBnfm06thYSc+vK7R9n9eEegGJ+0e165t/wSG7nmp0zToQGVSrf6jVN09c8QuqCoxdkqO2H1zOH5v84QwMKUI2XQFz3fcItZXWQoNhxN77Cx1wXovE=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 767C91978F6
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 11:24:19 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <dbb5d78d-89eb-615e-f591-cb8c0388b6f2@lohutok.net>
Date:   Tue, 7 Jun 2022 11:24:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch V2 04/24] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_56.RULE (part 1)
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220607131425.436789559@linutronix.de>
 <20220607131510.594097285@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220607131510.594097285@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: E6A2CF98-E675-11EC-920F-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
> Based on the normalized pattern:
> 
>      this file is licensed under the terms of the gnu general public
>      license version 2 this program is licensed as is without any warranty
>      of any kind whether express or implied
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
