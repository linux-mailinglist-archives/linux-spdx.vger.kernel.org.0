Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55E38258446
	for <lists+linux-spdx@lfdr.de>; Tue,  1 Sep 2020 01:03:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725987AbgHaXD2 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 31 Aug 2020 19:03:28 -0400
Received: from mga03.intel.com ([134.134.136.65]:63036 "EHLO mga03.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725941AbgHaXD2 (ORCPT <rfc822;linux-spdx@vger.kernel.org>);
        Mon, 31 Aug 2020 19:03:28 -0400
IronPort-SDR: LYNVkYdKY02CNwWRnQm6P1NBpKDMpksrP8NzQWNybgfl8gIm+VVgfVMutKoARg4rghU46x0xE2
 dwkiFwvEC5mg==
X-IronPort-AV: E=McAfee;i="6000,8403,9730"; a="157075818"
X-IronPort-AV: E=Sophos;i="5.76,376,1592895600"; 
   d="scan'208";a="157075818"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2020 16:03:24 -0700
IronPort-SDR: FSNiuSSh9FuGEJ16qFFsUm2ORfPKLQEB6matnKwAl6obtcwJBijUWuhlwguFkebssPeLEw16E6
 ZQkxqOgvCv2Q==
X-IronPort-AV: E=Sophos;i="5.76,376,1592895600"; 
   d="scan'208";a="502016400"
Received: from hrandhaw-mobl.amr.corp.intel.com (HELO hanvin-mobl2.amr.corp.intel.com) ([10.212.244.158])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2020 16:03:23 -0700
Subject: Re: [PATCH] [v2] Documentation: clarify driver licensing rules
To:     Dave Hansen <dave.hansen@linux.intel.com>,
        linux-kernel@vger.kernel.org
Cc:     dan.j.williams@intel.com, tglx@linutronix.de,
        gregkh@linuxfoundation.org, corbet@lwn.net,
        linux-spdx@vger.kernel.org, linux-doc@vger.kernel.org
References: <20200814145625.8B708079@viggo.jf.intel.com>
From:   "H. Peter Anvin" <h.peter.anvin@intel.com>
Message-ID: <1a4de696-2409-8de5-db77-9c5a21a762e0@intel.com>
Date:   Mon, 31 Aug 2020 16:03:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200814145625.8B708079@viggo.jf.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 2020-08-14 07:56, Dave Hansen wrote:
> 
> From: Dave Hansen <dave.hansen@linux.intel.com>
> 
> Greg has challenged some recent driver submitters on their license
> choices. He was correct to do so, as the choices in these instances
> did not always advance the aims of the submitters.
> 
> But, this left submitters (and the folks who help them pick licenses)
> a bit confused. They have read things like
> Documentation/process/license-rules.rst which says:
> 
> 	individual source files can have a different license
> 	which is required to be compatible with the GPL-2.0
> 
> and Documentation/process/submitting-drivers.rst:
> 
> 	We don't insist on any kind of exclusive GPL licensing,
> 	and if you wish ... you may well wish to release under
> 	multiple licenses.
> 
> As written, these appear a _bit_ more laissez faire than we've been in
> practice lately. It sounds like we at least expect submitters to make
> a well-reasoned license choice and to explain their rationale. It does
> not appear that we blindly accept anything that is simply
> GPLv2-compatible.
> 
> Drivers appear to be the most acute source of misunderstanding, so fix
> the driver documentation first. Update it to clarify expectations.
> 

Well written! Retroactive Ack from me :)

	-hpa

