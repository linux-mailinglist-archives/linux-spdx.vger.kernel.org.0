Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84C4352AE9F
	for <lists+linux-spdx@lfdr.de>; Wed, 18 May 2022 01:31:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231816AbiEQXbx (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 17 May 2022 19:31:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231823AbiEQXbt (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 17 May 2022 19:31:49 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B96E2AE21
        for <linux-spdx@vger.kernel.org>; Tue, 17 May 2022 16:31:45 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1652830303;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=l5kuNjNBl9+fH3PONgL09pmuj3tLgCwMoKlP16Cqack=;
        b=YOIEE+fuW3QDA/U77tRYAONJalISx5apnt0kPJVcaDgXCYJp1r2bfFXb4zfIcpcKgPqAML
        9CafcBiwQBiSF5f8gGyW5Rlws/V1ivR7mx1o+/YKyDNT7kYJwlVPjl7zgIoBRFLMN27BpW
        WsZ2KtQZ1gAQzlqxQ4dheEWLzQTgqksVUb11gwk6sFd2hpMrYjq/WkaHxQuNmfr8eWJz4S
        LqvOkeH/cnOg9nCu3BdxkbiGJ4UmZLl+AOmGpC12jHClDXYYqvCspRqDKY/MkzpBcCX2He
        swvHF6Jp3Ju8249Oq7q1Ppa5xREafuBsAFRZiVx8IvzDagalhApGBlM29uTWuQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1652830303;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=l5kuNjNBl9+fH3PONgL09pmuj3tLgCwMoKlP16Cqack=;
        b=15/KEH2/GJk8fQSU2HRkDa3rzs9SZs5BkKJg56li1znOKF3fFflVVaiU4FMWRlI+MFFLJu
        SfFm8CGi83FTAVDg==
To:     linux-spdx@vger.kernel.org
Subject: SPDX in the kernel: State of the union
Date:   Wed, 18 May 2022 01:31:42 +0200
Message-ID: <87zgjfka75.ffs@tglx>
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

Folks!

After the initial SPDX effort which ended about three years ago there
was not really much progress neither in terms of file statistics nor in
terms of activity on this list... I'm refraining from asking the obvious
questions...

Nevertheless I'm trying to cut myself some cycles to get this rolling
again.

As a first step I tried to resurrect my old scripts. That was not really an
enjoyable experience due to the python2 -> python3 fallout and the changes
in scancode since then.

Though after quite some cursing I was able to gather at least initial
statistics and to analyze patches based on the scancode detection rules.

I surely have to say quite some words about the 'improved' scancode
detection rules too, but I sort that out with Philippe off-list.

So here is where we are:

Files without SPDX identifier:		16410	~78% of total files

Files without any license hint:	         7131   ~43% of !SPDX'ed files
Files with one license hint:		 6673   ~40% of !SPDX'ed files
Files with two license hints:            2267   ~13% of !SPDX'ed files
Files with more than two hints:           339   ~ 2% of !SPDX'ed files

Files with less than 4 lines content:

        0 length:	   33   (some can be removed)
	1 line:		  276
	2 lines:	  109
	3 lines:	  135

Files without any license hint:

        arch                 774
	block		       1
	certs		       2
	crypto		      10
	Documentation	    4266
	drivers		     320
	fs		      26
	include		     124
	init		       0
	ipc		       0
	kernel		      14
	lib		      26
	mm		       3
	net		      15
	samples		       7
	scripts		      63
	security	       8
	sound		       9
	tools		    1457
	usr		       0
	virt		       0

Files with one license hint:

        arch		    1405
	block		       0
	certs		       1
	crypto		       1
	Documentation	      65
	drivers		    4369
	fs		     126
	include		     356
	init		       0
	ipc		       1
	kernel		      18
	lib		      35
	mm		       4
	net		      69
	samples		      14
	scripts		      26
	security	       0
	sound		      40
	tools		     141
	usr		       1
	virt		       0

Files with two license hints:

        arch		     731
	block		       0
	certs		       0
	crypto		       3
	Documentation	      13
	drivers		    1114
	fs		      66
	include		     101
	init		       0
	ipc		       0
	kernel		       0
	lib		      54
	mm		       0
	net		      91
	samples		      39
	scripts		       5
	security	       1
	sound		      14
	tools		      35
	usr		       0
	virt		       0

Script-able files with reasonable effort:

	No hint:            6501 ~90% of no-hint files
	One hint:	    5129 ~76% of one-hint files
	Two hints:	     584 ~25% of two-hint files
	Total:		   12213 ~75% of !SPDX'ed file

	Remaining:          4197 ~5% of total files

Scancode rules involved:     561
Scancode rules validated:    117

My plan is to focus on the 'low hanging' fruit of reasonably easy
script-able files first.

For the files with zero hints that requires a few questions to be answered
upfront:

   1) What's the approach for files with obviously not copyright-able
      content:

      - Files which just include other file[s] (one or two lines)

      - Files which have just a more or less useful comment why they
      	are otherwise empty (one to three lines)

      - Files which just contain a #define FOO and an include of
        another file to compile the included file with some other
	functionality (two or three lines)

   2) What's the approach for machine generated files:

      - Primarily kernel configuration files

   3) What's the approach for 'hidden' dot-files like .gitignore:

      Those files are just providing information to tools. The file format
      is defined by the tool (git, clang, coccinelle....) and the creative
      content is exactly zero...

   4) What's the approch for binary blobs or other files which cannot carry
      license information in the file itself?

Which is related to the discussion in this thread:

  https://lore.kernel.org/all/20220516101901.475557433@linutronix.de

The other question for these files with zero hints is which license to
chose. Sure you can argue that all files w/o any hint fall under the
project license, but especially the Documentation directory is interesting
as it's not clear for all of the various content what the preferred and
assumed license should be. That needs some thoughts and clarifications.
For the kernel code itself that's not a real question, but the tools
directory might need some care too.

For the files which have a licensing hint in whatever form, I think
resuming the work where we left off, i.e. mainly reviewing per scancode
match rules based patterns, makes a lot of sense.

Based on my cursory validation of those patterns I'm confident that we can
reach a 95% coverage within a reasonable amount of time.

Finally here is another round of important questions:

  #1 Is there still interest to get this done? The silence on this list
     after the initial effort is deafening.

  #2 Are there still enough interested and comptent people on this list to
     handle the legal questions?

  #3 Was there any progress on the outstanding questions on this list where
     discussion dried out almost 3 years ago?

I'm willing to pull the cart again, but if the interest and support stays
around zero, I surely have other things to do.

Thanks,

	Thomas
