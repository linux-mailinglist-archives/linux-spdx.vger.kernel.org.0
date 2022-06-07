Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AED1553FE42
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 14:05:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242253AbiFGMFX (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 08:05:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243352AbiFGMFW (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 08:05:22 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68E24F553D
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 05:05:20 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id C67751962C5
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:05:19 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=Hwd1xq9YyuTi
        lNrz9VUbKVBsV4MLkY7la9ulX9aJPeA=; b=jnJCBWHMcmsg+w/N0iNHAXWMZJob
        pRcNlQVJy4Aq6E7zvYx39BrsEWruBAY2nX1N4hSeCWgTTj+60L+LbZkivVZE+a7h
        eNwZphhHp6mhcnF/NWFyYUxX2LCJmewCounxXLGFBv2SPca8INp9u+agDPYBp7uL
        yyoUu8mUVgS9ydg=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id BFCEB1962C4
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:05:19 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=Hwd1xq9YyuTilNrz9VUbKVBsV4MLkY7la9ulX9aJPeA=; b=Qd55bTm+rslyYKdar95eg1oC9azM2t8HFyEJJFpVCJxZH3pEbUVGQy+SlQq6tkGjIrQCXKcG2KOOSZCgtJfF2NMjR5n6FrilqndlcKAcJcyED1xc2zqVGbHlingh8JiE4VGtTn1eri2QzR4d/TM4E7etDNsgJdfMdkdabOxYVqs=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 7EDBD1962C3
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:05:14 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <1476d279-6bbd-6aaa-dca1-b26349abe8cc@lohutok.net>
Date:   Tue, 7 Jun 2022 08:05:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 22/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_391.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200811.362351824@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200811.362351824@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 16E82660-E65A-11EC-B2F0-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      this software file (the file ) is distributed by nxp under the terms
>      of the gnu general public license version 2 june 1991 (the license )
>      you may use redistribute and/or modify this file in accordance with
>      the terms and conditions of the license a copy of which is available
>      by writing to the free software foundation inc 51 franklin street
>      fifth floor boston ma 02110-1301 usa or on the worldwide web at
>      http://www gnu org/licenses/old-licenses/gpl-2 0 txt  the file is
>      distributed as-is without warranty of any kind and the implied
>      warranties of merchantability or fitness for a particular purpose are
>      expressly disclaimed the license provides additional details about
>      this warranty disclaimer
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
