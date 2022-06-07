Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D1C0540296
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 17:37:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245401AbiFGPho (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 11:37:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240126AbiFGPhn (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 11:37:43 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E22CD2BDD
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:37:39 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 1FA791979F3
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 11:37:39 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=6SwDCMbZLPTH
        8eqCBpUbXXMFv2odYkFpz03rx85yu5g=; b=VtB0G9icm+aAnNl06lbiatjrwOKt
        W8ETFTcAywc68d4lNJ5BJp+BX5ucbBcE+u/GWPqdHac3eCtHbfeIC6E/Zme8lewc
        M5/6GT4REEl/Rf7Risn+iikVLKloNhUfdDTTHScHuAY7hBtlJPqHZFd+VcLJARPZ
        esZWtS5W+Bzcrgc=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 143241979F1
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 11:37:39 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=6SwDCMbZLPTH8eqCBpUbXXMFv2odYkFpz03rx85yu5g=; b=jRxKm+ZpLhxGbdS5eUz8BfrGFq+0UPzRHCNuzAc6wGYkPcbtwufhk9Es0q7VCNbhqpbJczW1h7/rLyBAzMH1IPy33VDdoYDD4Uz53VOwIVv9wic3dvV+mOE2+yqQc5kGBCiP8LGnXgsWIweH6y8jyWSFd6kgMGlEF/FrGE3nQs8=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id CE7BF1979F0
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 11:37:33 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <044c25a5-8df8-6261-d973-7b01149b8b7d@lohutok.net>
Date:   Tue, 7 Jun 2022 11:37:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch V2 12/24] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_168.RULE (part 1)
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220607131425.436789559@linutronix.de>
 <20220607131511.062158029@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220607131511.062158029@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: C01D7128-E677-11EC-A069-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      this program is free software you may redistribute it and/or modify it
>      under the terms of the gnu general public license as published by the
>      free software foundation version 2 of the license  the software is
>      provided as is without warranty of any kind express or implied
>      including but not limited to the warranties of merchantability fitness
>      for a particular purpose and noninfringement in no event shall the
>      authors or copyright holders be liable for any claim damages or other
>      liability whether in an action of contract tort or otherwise arising
>      from out of or in connection with the software or the use or other
>      dealings in the software

This one tips into the possibly-significant deviation bucket.

Allison
