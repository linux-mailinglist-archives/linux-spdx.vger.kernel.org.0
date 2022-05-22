Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0446C5303CB
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 17:21:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347858AbiEVPVN (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 11:21:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230290AbiEVPVN (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 11:21:13 -0400
X-Greylist: delayed 222 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 22 May 2022 08:21:10 PDT
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5CB115A02
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 08:21:09 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id B19591A9C06;
        Sun, 22 May 2022 11:17:25 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=x7ibkrrd3xyF
        mXR6ZvQIisxjgmNrP2POjaLj/6YZDxk=; b=CEKY2o2AUpJiVw0++rIURkW0jALc
        37UAt3AgVxnm94Zx/U5BaDu27NNV3Rvby0SkAeAIxlInVCVQ1wITl14iiTpAnwof
        Z2qKFoSqn+pVcl9cN4jyfmFdYSGZgOYEooSnHGOac0FB23x5XF9yf4Gn5kWHZzSl
        qYZa2OrG+SKlRY0=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id AA1171A9C05;
        Sun, 22 May 2022 11:17:25 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=x7ibkrrd3xyFmXR6ZvQIisxjgmNrP2POjaLj/6YZDxk=; b=rODb0SS0Tgmvkb3rvFPb4IkJVqqSDEtsGaZ5LlkClj83scpXu25XhQ4zZZzdaOCJFOdzeJmAJ0uIULmbJWRE1o1xTpXuH2rDHrLReArojPCvl5QIrptFf+cFtrOiionpxxP+PCOASYbgZDvYv9SH54G3gdbhOvcAxnotY4LMiDs=
Received: from [10.0.0.38] (unknown [24.186.244.147])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id AD80A1A9C04;
        Sun, 22 May 2022 11:17:21 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <bdbee107-aa2d-ce87-9c82-8be2f1fcb38d@lohutok.net>
Date:   Sun, 22 May 2022 11:17:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: SPDX in the kernel: State of the union
Content-Language: en-US
To:     Thomas Gleixner <tglx@linutronix.de>, linux-spdx@vger.kernel.org
References: <87zgjfka75.ffs@tglx>
 <9ea648b2-3430-bec8-c697-3017283e03b1@lohutok.net> <87y1ywi5b3.ffs@tglx>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <87y1ywi5b3.ffs@tglx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 47048246-D9E2-11EC-BFC3-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_CSS autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 5/20/22 11:37 AM, Thomas Gleixner wrote:
> 
> I ran out of cycles :)

Nod, it happens. Really, it's a planet-wide phenomenon the past couple
of years. :)

> I started to get some structure into this mess.
[...]
> I've generated static HTML pages from the data, which are available
> here:
> 
>    https://tglx.de/~tglx/spdx/index.html

Makes sense, and a large number of them look like they'll be easy to
review and approve.

> Which size of batches and what rate do you folks prefer?

Looking back to 2019, you generally sent batches of 10-25 patches per
day, where each patch was one match rule. Seems reasonable to start
again there, and tune up or down as needed.

Allison
