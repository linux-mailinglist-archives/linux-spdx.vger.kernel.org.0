Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBEF15406CF
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 19:38:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347410AbiFGRif (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 13:38:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347260AbiFGRhk (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 13:37:40 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3802193E8
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 10:33:10 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654623169;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=MapfnnBF/2IdOJoLoVVBpdUTIoCukvi+tw5dMr/XhxE=;
        b=e9wO5wMfIfBYjz+EKWJcvm1ewtg0B+1u5liXlIup00c4Z7LjnZVPR7FXm5GIey1M8pYAPW
        OcOSl42xhaCmR7SxLsQbVKhklVSaEjNupr/uMFNt4C14V7ZNzgPk6zAVYN5SZi5iWSJZxz
        17igKazuV92AJrYlHq1RH5S81v0DL9UBcoNuzAogxrJl3uDMMzbJerNVKKl0nzBillK1bc
        rCQojQfzNYqBGN16ML5mJYA2A7Jx4rvlBP8izL7E9E+OAZONyNRUQo6mw9dV1NRTFDmHWD
        AD4q3DrwIJn3OvAAabsEIHUOuBAzGxN72i4qT23aaFXcd+GkiwlYIcoO1wfaeQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654623169;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=MapfnnBF/2IdOJoLoVVBpdUTIoCukvi+tw5dMr/XhxE=;
        b=xajXK7//9FF8mVHtwdHCPDkPChF2bl5uZSZbuLkIfYlk9H3QtKu7Z7rrLzFRziTNpQZvi6
        Zt+sQcSAUyE7dyCA==
To:     J Lovejoy <opensource@jilayne.com>, linux-spdx@vger.kernel.org
Subject: Re: [patch V2 00/24] The first batch of various GPLv2 boilerplates
 and references
In-Reply-To: <6965a1b2-8d31-16d3-019e-c6ae526f62d8@jilayne.com>
References: <20220607131425.436789559@linutronix.de>
 <6965a1b2-8d31-16d3-019e-c6ae526f62d8@jilayne.com>
Date:   Tue, 07 Jun 2022 19:32:48 +0200
Message-ID: <87leu84bwf.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, Jun 07 2022 at 09:53, J Lovejoy wrote:
> On 6/7/22 8:11 AM, Thomas Gleixner wrote:
>> This is version 2 of the first batch. Changes to version 1:
> ah, so should ignore the previous set with the subject line beginning 
> with "Batch 1 - . . . " and only respond to the following set with the 
> subject line beginning with "V2 . . ."?

Yes please. The only interesting things in V1 which are not in V2 are
the problematic disclaimers which got flagged by Richard.

Thanks,

        tglx
