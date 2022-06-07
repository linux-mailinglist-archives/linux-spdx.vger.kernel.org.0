Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF52953FDA7
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 13:39:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241959AbiFGLjt (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 07:39:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237616AbiFGLjs (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 07:39:48 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA5DCA7E05
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 04:39:47 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 5EACB195F9E
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:39:47 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=u6vPerfftNNI
        jYkwd9jRUfOxOdbXtmavKPtgKdg+t70=; b=qz2Oc6zwullGKM/0Ezxlc7BBhpXs
        uY+nfueB7uG+86eUsg4EWEsOHYFn3eGG2Qg3kLJJ8ofnQC5/Ip9Faoz3l6yunW1j
        y6jNSmQQQ07qyXfHjU8BulZ0dAS/z29QycTqlK+Or4uwLh4vBDRVVUCI8KTK7Kky
        COack4Z9gMxH6u0=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 4EF84195F9D
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:39:47 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=u6vPerfftNNIjYkwd9jRUfOxOdbXtmavKPtgKdg+t70=; b=KKe5+OMybx84twvIHl9p5fvkC6ba6h2tBfPxmHswVWCibhjtMWjbqIQwquP5HGCwEWHA8Yv+r/kSDDEfj1Zb1IQUL4giKqCaVQuwJwyJn9v2Yh4WaEcCYosSaBVEu5D4atdH7mm6YIPqwh6J5U2LpULxZmtAmTdnodk7W/twZdg=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 35974195F95
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:39:43 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <8efc06f6-9b53-1f91-22b7-01469cfc0865@lohutok.net>
Date:   Tue, 7 Jun 2022 07:39:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 06/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_147.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200810.416116354@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200810.416116354@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 862989DC-E656-11EC-94DF-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      licensed under gplv2
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
