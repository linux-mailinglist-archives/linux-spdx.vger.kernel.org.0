Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 969B153FDBE
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 13:43:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242131AbiFGLn4 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 07:43:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbiFGLnz (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 07:43:55 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ECF852509
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 04:43:54 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id E7FBE195FDC
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:43:53 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=V5JRfUfl/xFk
        8VWCYREnyp2v/wZA6HFiim2/pPcMeXk=; b=b6PscAEY5/wJAD5TeXpoXAfoK4Nl
        3L3Q0hpYCj/yadjkn72zYVthNJDeVvt2rtB8TjBKbK/k341h8WQEClTFaISF6eCT
        gvMI2FETN8TwTU32gPN/CfIDLR0RsjRiEXdwS/IkJbhzMeZtp0i8/QuFN0u2o+aO
        k2rz4TBpt72HLmw=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id E138E195FDB
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:43:53 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=V5JRfUfl/xFk8VWCYREnyp2v/wZA6HFiim2/pPcMeXk=; b=rf1YGqPfXgLXgQaItFHGZ+bHDpu4CwkUIlO0w2mHC1AYgEinEmVCZEeGpgYICAYxmPXA3ou69tUVWdsK6mNa8dwcLWdnYCCwha4mTw1yXeRMDOMYLJTsDtcmtYcbLzqFgl2LkfnZ2hA4QavZq3ZoZ2wNNDOj35OYF3XfDkbBmJY=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id A455E195FD9
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:43:48 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <ea035001-13e7-9bc8-d8fc-b5d9292b8ab8@lohutok.net>
Date:   Tue, 7 Jun 2022 07:43:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 09/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_160.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200810.587448999@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200810.587448999@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 18762A2A-E657-11EC-9A36-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      the code contained herein is licensed under the gnu general public
>      license you may obtain a copy of the gnu general public license
>      version 2 at the following locations:  http://www opensource
>      org/licenses/gpl-license html http://www gnu org/copyleft/gpl html
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
