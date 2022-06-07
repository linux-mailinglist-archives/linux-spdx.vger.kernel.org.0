Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0C5553FCB4
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 13:01:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242342AbiFGLBd (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 07:01:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242715AbiFGLAp (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 07:00:45 -0400
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74877A98AF
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 03:59:06 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.west.internal (Postfix) with ESMTP id DD90A32009A4;
        Tue,  7 Jun 2022 06:59:02 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Tue, 07 Jun 2022 06:59:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm2; t=1654599542; x=1654685942; bh=6D/ADJnLXk
        ZAouincLhDilOdZ/FO4fk3WxX4qV1ujno=; b=HaVXM+dWUSS+bjv7G+cDv7FPeE
        M4YHX2AF2AIjGJW2W0SWylpGDydS9BEM8XkZuNUcAQxzbeYJQ8QHiIXhbLMLFE0y
        LGz3uTpy/YOP9i3cMLdTJ8VK36q3YgMhY1gn3oDrU7KX+Pjhb8EoZdFeNb/mqmeZ
        PyeAFDJS0Ct+U/dHW5JMryPfeltUumoMl1riVPGES8YgbFfdKiqhBDboMaK6HQgp
        YmfvpbXkglx5eywE5xdgr6iXt2/2o/LjFJAzF2d3bHm7DNrdXxKaFGvOvcAiYM0B
        MAMFJTpWjWQFdVzYL4xNgmLVGCyOhwxNk2z3ZV4VpWH96Fb5eZ4koL/lt1SQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
        :feedback-id:from:from:in-reply-to:in-reply-to:message-id
        :mime-version:references:reply-to:sender:subject:subject:to:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm2; t=1654599542; x=1654685942; bh=6D/ADJnLXkZAouincLhDilOdZ/FO
        4fk3WxX4qV1ujno=; b=FCs9iZnzPNiWzYykZRV6MjKPOTmMMpQOYrchxfPe7vb7
        AFmGY3scLqWocB8nB5Cq6ShIGUzm6qCBzunQSnLuNG8mtNRL8Hlj3gESNNSGPe3B
        k8r51JG1sL7UihBAubxQZP5Aeawq/pmH06Qq0/vSsoZ9+/SURxgEWTM5Z5YMyG28
        d+yTVqkS4PP6ixTY3dwtB8O2Br7n5EbC3Xva+HQfY5jtJB5om/IRQbetWFK+fJQ5
        aYz+d2BgE7R0ixZ4RRiGJ0mMp2svhp7Jkh+qn8/RXyb0jlsWaA99t4T+FV+TQkAJ
        7XqcJAPz+y75XbkB6OPSqmVQIjyO6mBOEpHuvWxTXg==
X-ME-Sender: <xms:di-fYjF-ojhWhbQqUPM-Dy_qM_CmZUK6P0sU1_wHj2RGkfz792YDJA>
    <xme:di-fYgXdsTXFFxRQOdlkAfNv-0AHuPTBThFWU7_lJkvL8J5G10xbfk8qU-zfSFI3D
    nxgMRrv2Ukt-A>
X-ME-Received: <xmr:di-fYlLxSbfeGBvBgAk9LxVGtwMpQXQubsgC4E9GAziZLFr-rsSYK8eiit79>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedruddthedgfeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucggtffrrghtthgvrhhnpeehgedvvedvleejuefgtdduudfhkeeltdeihfevjeekje
    euhfdtueefhffgheekteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
    ihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:di-fYhHYxlHtFkoiqNc56c8lwBJefAgMoAWo5yVqWNIbN7wpy403-A>
    <xmx:di-fYpUJuaH2FoNMelYZi05xn90iZ2D1Drm-wGhvpZXXX8EoOCbmXg>
    <xmx:di-fYsOOp6boDLlqBAA2cdPcormoOAl5Kldp1GXqh7qYLzqd8ff94g>
    <xmx:di-fYmjUIXDFBkCw2V19al4VGPxTYtKkuFHU5hPXbTbQD0qHdSk1CA>
Feedback-ID: i787e41f1:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 7 Jun 2022 06:59:01 -0400 (EDT)
Date:   Tue, 7 Jun 2022 12:58:58 +0200
From:   Greg KH <greg@kroah.com>
To:     Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-spdx@vger.kernel.org
Subject: Re: [patch 01/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_8.RULE
Message-ID: <Yp8vcm4WBF7mQi5p@kroah.com>
References: <20220606200732.204209102@linutronix.de>
 <20220606200810.120819557@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220606200810.120819557@linutronix.de>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Mon, Jun 06, 2022 at 10:10:17PM +0200, Thomas Gleixner wrote:
> Based on the normalized pattern:
> 
>     this program is free software you can redistribute it and/or modify it
>     under the terms of the gnu general public license version 2 as
>     published by the free software foundation
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>     GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>  Documentation/driver-api/vfio-mediated-device.rst |    4 +---
>  arch/arm/boot/bootp/bootp.lds                     |    5 +----
>  include/linux/input/elan-i2c-ids.h                |    5 +----
>  3 files changed, 3 insertions(+), 11 deletions(-)

I understand the goal to split this up per "rule", but that rule name
makes no sense to any kernel developer.  They don't know what it is, or
where it came from, or anything else like that.

This also touches files across subsystems, generally not a good idea.
Is your goal to get acks from the people here and then split them up
per-subsystem later, or are you thinking you want these merged as-is?

Oh, and thanks for picking this work up again.  It's amazing to me that
the companies/people that complain about this over the years never
actually send patches to do anything about it...

thanks,

greg k-h
