Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE6E666B0FC
	for <lists+linux-spdx@lfdr.de>; Sun, 15 Jan 2023 13:35:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231174AbjAOMf1 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 15 Jan 2023 07:35:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230432AbjAOMf0 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 15 Jan 2023 07:35:26 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56E96CDC9
        for <linux-spdx@vger.kernel.org>; Sun, 15 Jan 2023 04:35:25 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 116D6B80B57
        for <linux-spdx@vger.kernel.org>; Sun, 15 Jan 2023 12:35:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6185DC433EF;
        Sun, 15 Jan 2023 12:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1673786122;
        bh=qUv0bF9X7KJch0N3UHjTf3e6I+xEUSBxltbaPuIiFF8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=u9TBlBNwqAokRFhOWBlqh69RptMideIE1chnjtRL7/zX5eo2IZ8s0PgLswncYPqPA
         bAhCcSW6BBPBEe32cnx04+YT63+n1ASJ1zBBsHqFoDrgLAZP/rSOzkEfFJH3hhPwM3
         jQczq/oQ7jjPPCVonU5TjgPPZ+rQTT7ubxVB+UqQ=
Date:   Sun, 15 Jan 2023 13:35:14 +0100
From:   Greg KH <gregkh@linuxfoundation.org>
To:     shijm <junming@nfschina.com>
Cc:     tglx@linutronix.de, linux-spdx@vger.kernel.org
Subject: Re: [PATCH] scripts: modify output formatter
Message-ID: <Y8PzAg7FF/1JN1jV@kroah.com>
References: <20230115112618.11373-1-junming@nfschina.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230115112618.11373-1-junming@nfschina.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Sun, Jan 15, 2023 at 07:26:18PM +0800, shijm wrote:
> modify output formatter
> 
> Signed-off-by: shijm <junming@nfschina.com>
> ---
>  scripts/spdxcheck.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
> index 18cb9f5b3d3d..7bc13f3c5f7d 100755
> --- a/scripts/spdxcheck.py
> +++ b/scripts/spdxcheck.py
> @@ -232,7 +232,7 @@ class id_parser(object):
>                  tok = pe.tok.value
>                  sys.stdout.write('%s: %d:%d %s: %s\n' %(fname, self.curline, col, pe.txt, tok))
>              else:
> -                sys.stdout.write('%s: %d:0 %s\n' %(fname, self.curline, pe.txt))
> +                sys.stdout.write('%s: %d:%d %s\n' %(fname, self.curline, pe.txt))
>              self.spdx_errors += 1
>  
>          if fname == '-':
> -- 
> 2.18.2
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/process/submitting-patches.rst for what is needed in
  order to properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/process/submitting-patches.rst for what a proper
  Subject: line should look like.

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file,
  Documentation/process/submitting-patches.rst for how to do this
  correctly.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
