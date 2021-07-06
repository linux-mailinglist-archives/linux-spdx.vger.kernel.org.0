Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04B843BD8EE
	for <lists+linux-spdx@lfdr.de>; Tue,  6 Jul 2021 16:49:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232006AbhGFOwH (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 6 Jul 2021 10:52:07 -0400
Received: from mail.kernel.org ([198.145.29.99]:40614 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231675AbhGFOwH (ORCPT <rfc822;linux-spdx@vger.kernel.org>);
        Tue, 6 Jul 2021 10:52:07 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0E20861380;
        Tue,  6 Jul 2021 14:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1625582968;
        bh=YHuQlVf/KYP+qcXTn9VzmaTE01RylcO1C87ghgqwUeo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=P8xeVVenPhDxRp7Set8pOuxbRtPGLlKa4tGONKgzcP2zyonkYRyTq9/VqtBk0qBgS
         CvHzwlO1cmAOfYXPCa55PutqOA3w2ARPF8kAzLzAGjejWWHJulxMXNZVFo8CQNdIyy
         2KYVhk7ZrUfNgFdoTgKRwnYTDIlPaT0sDZrKgFY0=
Date:   Tue, 6 Jul 2021 16:49:23 +0200
From:   Greg KH <gregkh@linuxfoundation.org>
To:     David Heidelberg <david@ixit.cz>
Cc:     tglx@linutronix.de, corbet@lwn.net, linux-spdx@vger.kernel.org
Subject: Re: [PATCH] LICENSES: replace deprecated SPDX GPL naming
Message-ID: <YORtc6s11X0gzgS7@kroah.com>
References: <20210706122018.45355-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210706122018.45355-1-david@ixit.cz>
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, Jul 06, 2021 at 02:20:18PM +0200, David Heidelberg wrote:
> Modern SPDX naming is more explicit, clear and easier to understand.

No, please, let us stick with the existing spdx version that we started
converting the kernel over to.  Only once that is done, should we worry
about trivial things like this.

And we have discussed this in the past, please see the email archives.

thanks,

greg k-h
