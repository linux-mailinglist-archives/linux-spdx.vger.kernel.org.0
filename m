Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A6B453FE49
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 14:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbiFGMGT (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 08:06:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243366AbiFGMGO (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 08:06:14 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EF47F5D09
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 05:06:13 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 25E031962D2
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:06:13 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=B0+tqSPa0ywb
        oJKiSIwPBbsnO/HD8wmKz71BhhYKIAU=; b=F+xejVt3FWCYHXLmVvZR5LIU17A2
        JskI2DZASbgYMkVfiJOYJIArewgic15/xQMLclhy0EtlG7eoJmMvyhFyZWGjqrq9
        YELe+f4HWyBaOwdC8P0854ghI3PhUG9LtDz9teENMiJSASypIcxQKKjcONtc+3iY
        PMYzdNZus6S5jLs=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 1DEAC1962D1
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:06:13 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=B0+tqSPa0ywboJKiSIwPBbsnO/HD8wmKz71BhhYKIAU=; b=TCezehWji56pOpi2i/WSsSEstlP1W83oNcXxq0VGNArjFezCW+O/NFcCb7TERRXGVK6pkWYLOenrrWVdF1FizBpYmiY8GVa17PODK2WxVFsVb346ZQCVBLpZ9R6ImYJawUToZjyYoY2FY34J2DsyVtNUmVn8Uk56nfPnDHlIaXo=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 147281962CE
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:06:08 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <51c98f7d-d8ff-c8a1-165d-83d23a7bf318@lohutok.net>
Date:   Tue, 7 Jun 2022 08:06:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 23/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_398.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200811.419929815@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200811.419929815@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 3768686E-E65A-11EC-8578-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      this file is licensed under the terms of the gnu general public
>      license version 2 this program as licensed as is without any warranty
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
