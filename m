Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23CD553F9F3
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 11:37:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229938AbiFGJg7 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 05:36:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239781AbiFGJg6 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 05:36:58 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B8E7E731C
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 02:36:56 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id C79D119544B
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 05:36:55 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=W+wAFHdqbWcD
        AnynqjnkcUeN+WWl377H26HyJ60Vqvk=; b=j8Hq2uwegmG5mxw80YSxc9UUu1jZ
        KBsFUd8ehxJ7j/WyiwLnVCtsZJ7oQTGyRaiieYmDN+rJI3r4q7jFnT2V2vGuT2ew
        koABrkbwLo/X4UIvkyV5nP6ahBwboZAs9e8A2aXntR7XBbtW6yr06iqGmvhaHW12
        +Ybyba7ZuBknhdc=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id C178A19544A
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 05:36:55 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=W+wAFHdqbWcDAnynqjnkcUeN+WWl377H26HyJ60Vqvk=; b=i+99zcAM59cwtCh3PdH18cw7OldsnpUyR9gAAHEoQZfJjOIYFNYz4560Na/YKVCDJSc48R0V0OUn4iqNA8DReWfBaAQzOIuT0Q39Nk6n52by4qvSg1KceAbCj4l5w97Lo8i5jObB7mHVYXCQ5TMS8gCZve4VY/v2XeBDGOHF/ig=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 99066195448
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 05:36:51 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <de50884f-e13a-bb0b-64a7-2eb1b32904b1@lohutok.net>
Date:   Tue, 7 Jun 2022 05:36:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 01/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_8.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200810.120819557@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200810.120819557@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 5C596E3A-E645-11EC-8159-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      under the terms of the gnu general public license version 2 as
>      published by the free software foundation
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
