Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B1CF254812
	for <lists+linux-spdx@lfdr.de>; Thu, 27 Aug 2020 16:58:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727952AbgH0O5p (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 27 Aug 2020 10:57:45 -0400
Received: from mail.kernel.org ([198.145.29.99]:50130 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729031AbgH0MZ2 (ORCPT <rfc822;linux-spdx@vger.kernel.org>);
        Thu, 27 Aug 2020 08:25:28 -0400
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 3E4AC22BF5;
        Thu, 27 Aug 2020 12:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1598530692;
        bh=XA/2SOWzpOKYqsWNqmRW2VWhio0avdiOVEXAmnk7eqg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FA+HQ5u4GLkBMRdJIGYiEu2Yim8rrhku7zK1NQmwnwHpntgDjqoY7/LxbsOPz5Gof
         ljext+7bAg34IrmpC4Njegr4VF6dB3oySSI2nj/7h9OOz3h2j3BUPseBb9RiUcfzrT
         2ZxAkgC8+VZQ+TAEcnlkH/xeV8YtCsrs5hm15qt4=
Date:   Thu, 27 Aug 2020 14:18:26 +0200
From:   Greg KH <gregkh@linuxfoundation.org>
To:     Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc:     qla2xxx-upstream@qlogic.com, QLogic-Storage-Upstream@qlogic.com,
        GR-Linux-NIC-Dev@marvell.com, Nilesh Javali <njavali@marvell.com>,
        Shahed Shaikh <shshaikh@marvell.com>,
        Manish Chopra <manishc@marvell.com>,
        linux-spdx@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: SECOND REMINDER on Qlogic driver license conversion
Message-ID: <20200827121826.GB420527@kroah.com>
References: <alpine.DEB.2.21.2008270740140.31123@felia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2008270740140.31123@felia>
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Thu, Aug 27, 2020 at 08:00:17AM +0200, Lukas Bulwahn wrote:
> Dear Qlogic driver maintainers, dear Nilesh, deat Shahed, dear Manish,
> 
> 
> during an unrelated kernel clean-up task, I noticed some LICENSE files for 
> the qlogic drivers hanging around in Documentation.
> 
> Thomas Gleixner has provided you a patch series in June 2019 to pick up or 
> simply add a Reviewed-by tag here:
> 
> https://lore.kernel.org/linux-spdx/20190606205526.447558989@linutronix.de
> 
> As it seems from the public mailing list archive, you have never responded 
> to Thomas' request. If you could indicate that the change is fine for you,
> I am happy to rebase the patch series to the current next tree, so that 
> Thomas can pick that up and let it travel through the spdx tree to Linus 
> for the next release.
> 
> See first reminder here:
> 
> https://lore.kernel.org/linux-spdx/alpine.DEB.2.21.2006300644130.4919@felia/
> 
> Just to let you know, I will send a third reminder in a few months, and 
> if there is no response to that, I will just send a patch to mark those 
> drivers where QLogic-Storage-Upstream@qlogic.com or 
> GR-Linux-NIC-Dev@marvell.com are maintainers as Orphaned, just to keep 
> MAINTAINERS reflect the actual state.

This is why I hate having "group aliases" as maintainers.  It doesn't
work as we never know who "really" is maintaining the code, and there is
no accountability.

Given the length of a lack of response so far, I would suggest just
marking it orphaned now.  If someone wants to step up in the future to
maintain it, great, but it needs to be a person, not an email alias.

thanks,

greg k-h
