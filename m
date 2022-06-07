Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E60E53FDDD
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 13:50:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243113AbiFGLun (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 07:50:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243206AbiFGLuV (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 07:50:21 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A048A814A2
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 04:50:19 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 2F6E619601F
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:50:19 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=+/gpLCP8MkLw
        PL5kmCjF7vlskGoPiCdX0f8IJTrqYBg=; b=eZdiZ4fRsa+6AW1c2RAAJohBLoS1
        RYDBUivT4aTXj1flrnc7jNtZWj4IHemd7udcWJAPJqYTY9KlExd0XgyhMnS6W12R
        OhFkUtqac40yOD1w1fd0SoZ8Cw3g1BTd6ucQVS5lWHAvO15NbF4Zz/D7X8FG3XDh
        JzMh87SRRRTDRo8=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 2870419601D
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:50:19 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=+/gpLCP8MkLwPL5kmCjF7vlskGoPiCdX0f8IJTrqYBg=; b=kqR04e4I10fH22Pi6mym1dOF152HDbAQvORR7sT2t8V0XwMYVcKCSQhS5UBf+480Lit0rp6bFn/3KsNl2EvYd0jNDqjtVG5eGE68RvCmhU5ZGO3vPLEo3G3xTEiyf4ytvJIUlFDq93Wnfj6BBa3nkkHk28Dd9kQggzP+eZ6wLXU=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 021A419601C
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:50:13 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <f5a2450c-ddba-bf1c-e61a-b014b6fe4976@lohutok.net>
Date:   Tue, 7 Jun 2022 07:50:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 14/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_292.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200810.900749106@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200810.900749106@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: FE2852DC-E657-11EC-8F43-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      published by the free software foundation  you should have received a
>      copy of the gnu general public license along with this program if not
>      see <http://www gnu org/licenses/>  this software is provided as is
>      and without any express or implied warranties including without
>      limitation the implied warranties of merchantability and fitness for a
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
