Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69B2753FE32
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 14:00:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234412AbiFGMAq (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 08:00:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232435AbiFGMAo (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 08:00:44 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C240BC9EC7
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 05:00:43 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 601BD196271
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:00:43 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=b4ijsGVltbNa
        7zWLo93MulGDvTQZbwA42MxN4PhuMQw=; b=Rbh2oNJHshb3rBnam4ylqgIFV48q
        XJTqCwx5QiBdvux56xek7HeqHyGHn+mBSkNibPPaElUg4zUmlbffEdCD2gwqhwxY
        wlx7HEsv+jt3Gc1ddVnFFNzBVP5w3yIZ72we8nvZHZROLCJvGVkDzvpA1MX9XFqP
        4qsBV84gBS6OwhI=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 4EDE619626F
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:00:43 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=b4ijsGVltbNa7zWLo93MulGDvTQZbwA42MxN4PhuMQw=; b=nIekmBG9Jztq6IsnLVFMU4fwKAd7GKVYgtycSZoDg3XfD+/tq10d0h6gQAQqswB8LgQ6mEfm9bYeGd4oVwzO/P7q6TzOzzeyfQfm+8gskSziAWxRKF8NCUWzh09+dcFrAKeSttgFRai2d6HBqEHt/gcUyBYfugM5KZ+Dytg03co=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 275FB19626C
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:00:38 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <cb21939c-4ae4-5506-d944-11639b6fe7b4@lohutok.net>
Date:   Tue, 7 Jun 2022 08:00:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 21/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_390.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200811.304883172@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200811.304883172@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 72C72C70-E659-11EC-B484-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      this software file (the file ) is distributed by marvell international
>      ltd under the terms of the gnu general public license version 2 june
>      1991 (the license ) you may use redistribute and/or modify this file
>      in accordance with the terms and conditions of the license a copy of
>      which is available by writing to the free software foundation inc 51
>      franklin street fifth floor boston ma 02110-1301 usa or on the
>      worldwide web at http://www gnu org/licenses/old-licenses/gpl-2 0 txt
>      the file is distributed as-is without warranty of any kind and the
>      implied warranties of merchantability or fitness for a particular
>      purpose are expressly disclaimed the license provides additional
>      details about this warranty disclaimer
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
