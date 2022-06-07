Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D75E53FDF4
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 13:51:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243315AbiFGLvs (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 07:51:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243254AbiFGLvn (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 07:51:43 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81379B41E2
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 04:51:13 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 31AFF19603B
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:51:13 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=PKTMOVyLRJcB
        ovcEuS/ymO5OqOTan9vEJniEg9LHFYI=; b=TcysI7aJK256c0zWXqOsYl3kWbt5
        whELk/YbtecnibSzNXqCTJqa0DGnzy3KjqO3I3WbSyJAY5d2YqdaOlWo1GdeNJ0c
        9Cp0e7wUn7oplCdfRHmUUNAeRwnGvaJz/xHhZF+ttYpBwRqOR4kPlSu8P278SyQ7
        Xcz1ITwSnH+x3vU=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 2A98019603A
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:51:13 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=PKTMOVyLRJcBovcEuS/ymO5OqOTan9vEJniEg9LHFYI=; b=GdKIImuhK9w7qp7TFVp+2gTZKdKnwfPachm7Yw388a7qJ1nXr2f9bvpov1v8a/TFne0JD+RI3fW29Zo0CDUIDr77wYiagFNjXv/2UJ/dMoLpwidI5QIDHgc/AhBQ6dm//HFy1CqfpISuzZ2c5MyCV2dYy1hJpLfrNp2c+v8ET14=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 75FE3196036
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:51:08 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <4f9ef0db-06dd-9a47-73bf-f78d1073c5e0@lohutok.net>
Date:   Tue, 7 Jun 2022 07:51:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 15/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_298.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200810.959963467@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200810.959963467@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 1EA12B6A-E658-11EC-81B4-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      this package is free software you can redistribute it and/or modify it
>      under the terms of the gnu general public license version 2 as
>      published by the free software foundation  this package is provided as
>      is and without any express or implied warranties including without
>      limitation the implied warranties of merchantibility and fitness for a
>      particular purpose
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
