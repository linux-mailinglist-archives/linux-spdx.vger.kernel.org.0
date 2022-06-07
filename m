Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 435A1540186
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:36:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235493AbiFGOgE (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:36:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232600AbiFGOgE (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:36:04 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7AC08D6B7
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:36:01 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id F35E8197304
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 10:36:00 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=RJwqpbKslg/C
        z/oYZjEM2znrXNUHG92/aJei1JByuMQ=; b=MvBfEAPQ26pTsKDDvrRGozD3GaHD
        LWHNFE2MSxHIF0UGBxdH6Qo7TkWysZZbUNNFr252l4MTyBD3UbErjJmayO+l7lNE
        dt4roIjvlk/U6YE041osGQXvAp3OZMwrqLF8r0XEBbXL73dg81+QpJlvcC6l05h8
        pKTKno0P0WaRvcQ=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id E9359197303
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 10:36:00 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=RJwqpbKslg/Cz/oYZjEM2znrXNUHG92/aJei1JByuMQ=; b=FxBPzq17P4otV/rmhMX/7U4P22f+gIVgCh9dqkButDwe3nNuMWfa3467RMJYCozkXdDTQavvnIU63ZThhiFtsXN2AbFfnfeTm+QakwqpXNm4frhC3Ig9wEC18w+Rsu5UY9nHPBHBLx4CsPMNksvi3OwSMEje4IWCQmcgGSswf48=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 95AA21972F1
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 10:35:56 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <e24897b0-721e-cbca-c22b-fb1d3f7a0120@lohutok.net>
Date:   Tue, 7 Jun 2022 10:35:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch V2 02/24] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_30.RULE (part 1)
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220607131425.436789559@linutronix.de>
 <20220607131510.477785405@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220607131510.477785405@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 2463EDD2-E66F-11EC-9B30-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      this program is free software you can redistribute it and/or modify it
>      under the terms of the gnu general public license as published by the
>      free software foundation version 2  this program is distributed as is
>      without any warranty of any kind whether express or implied without
>      even the implied warranty of merchantability or fitness for a
>      particular purpose see the gnu general public license for more details
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
