Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2AEF53FE2F
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 13:59:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231285AbiFGL7I (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 07:59:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232435AbiFGL7I (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 07:59:08 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9FCB84A1D
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 04:59:05 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 69DA3196231
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:59:05 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=PfeJHtFQTe5/
        tSFH1f28kqQPAq5yn1apESdZjmB/xvE=; b=wTfRz7n9pYMsWE1wFuAXKhLnHlhF
        Giov8jB/9Tzbh5+ZLY6yDnN3SQSvrRL4zYtrwPBqx+qHcUyg1GiwBkZjn8OMVNHx
        gl7nhRfk+C+AImYttifnezC1wKtJCZ/iypH+W84F6RejZRwnXyMerH7CwHFbJ2D+
        kQYUBT961cUvhcc=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 63E68196230
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:59:05 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=PfeJHtFQTe5/tSFH1f28kqQPAq5yn1apESdZjmB/xvE=; b=gPRjMJ9ngrv+FLpMy4yZaNWjjvuFwTLjtQTqGw3lcrPzcY7y2j0TM9XhV6YtutsighifY8EyMSW4WMQfYGZ4gA4lcCVyoZipe/lKhDF3sG2QXAOedeN5BlkYofUi2DcFbv/zAd85/s9WxbkkdP0VYKYgmG7Xh6ht2p8LjnxdfjQ=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 0F43C19622B
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:59:00 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <4a18a140-fce5-3b05-e9a6-a88713f9641b@lohutok.net>
Date:   Tue, 7 Jun 2022 07:58:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 20/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_385.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200811.246246983@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200811.246246983@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 384E70C6-E659-11EC-B7E3-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      licensed under the gpl v2
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
