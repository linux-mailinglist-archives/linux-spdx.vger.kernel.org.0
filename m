Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7564718EADB
	for <lists+linux-spdx@lfdr.de>; Sun, 22 Mar 2020 18:29:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726814AbgCVR3T (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 Mar 2020 13:29:19 -0400
Received: from mail-wr1-f52.google.com ([209.85.221.52]:36182 "EHLO
        mail-wr1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725972AbgCVR3S (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 Mar 2020 13:29:18 -0400
Received: by mail-wr1-f52.google.com with SMTP id 31so7831238wrs.3
        for <linux-spdx@vger.kernel.org>; Sun, 22 Mar 2020 10:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:user-agent:mime-version;
        bh=jDuDSSbLRm0L+6Kloj7mbzJ8KRmieifMddOoKRWlbG4=;
        b=fJhN+hLlf511MpIYBCgghkTEL51CHdv6371zHH64nB7mKGfWBeaoWHpc3AbPE7DD97
         uB9XKMb+yZUwtwXqalkpyFeLEjGUzz0l/PGVasl6A+7lV6R+bDPQcjuux1if+C4QxxUq
         +72v6dVzZbcXilusWOw/7VIp7VtKgc7FrDwCVvcgPsuA94ifwoBrtZNJbVLENPOQAQ1X
         aefZK7ws9qrmkv1JNMFsVV53k3nerbYOcsnfo6lrVqC77cGT4Ka+0PIcSO6p9EPv9b+d
         Bly3ugraY611wafJWxa/+JYYjVFlbMSSx5HkDPW3Z0Y30J+E9Nqj8ZyTkIZMkj2PTamE
         vcDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:user-agent
         :mime-version;
        bh=jDuDSSbLRm0L+6Kloj7mbzJ8KRmieifMddOoKRWlbG4=;
        b=FaoSDIs8tjA55uDqqH6TYFR8dKNSZSuQuuM6dYfYdAaNqIXcfhjQ5WyBCn/ZOK3ZoB
         X9aPwcRzVZGqIjiMO5A6RAAysMfhjGy18GBZRopP4Tm18hCOYBAjyrfSACgTHQoO9fhJ
         HvRIsFl1HLuJ13HnTOSqCKhA+GQ09WQSJ+M31hbEGeW9zs/2sOhF7NlHKXhr/RB19aSN
         fSGz6Sqm9K5ZsHAReuAYKdczuHxQ7WBIotd2ERqUlg98XioaMzX2kOIuC9AvjopmKS2o
         lID488nEjZzyDDFAjMjf+iMiwUVIMHcpkT4+EKmfY6R5l4Q0UXOYM6IRPtIJ25+CpyzF
         gw0g==
X-Gm-Message-State: ANhLgQ20rwXB8Ei1EwhxXwlSwtIkST3KEELeTEwwz1Mbl4z5kokQv4WL
        3TPzZpmGMajwOnMKJ0qNsAQZbv+G
X-Google-Smtp-Source: ADFU+vt8M6nUU+zJsiMXg5K4r9F9fEVCGqOGJs/ZEjBy7k1ryvkMTlborT26IFg1sBB7HzV96IOGxQ==
X-Received: by 2002:a05:6000:1090:: with SMTP id y16mr23367744wrw.281.1584898155668;
        Sun, 22 Mar 2020 10:29:15 -0700 (PDT)
Received: from felia ([2001:16b8:2d25:ed00:30d0:a825:e837:3a59])
        by smtp.gmail.com with ESMTPSA id q8sm11754570wmj.22.2020.03.22.10.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 10:29:15 -0700 (PDT)
From:   Lukas Bulwahn <lukas.bulwahn@gmail.com>
X-Google-Original-From: Lukas Bulwahn <lukas@gmail.com>
Date:   Sun, 22 Mar 2020 18:29:06 +0100 (CET)
X-X-Sender: lukas@felia
To:     Ilya Leoshkevich <iii@linux.ibm.com>,
        Mikhail Zaslonko <zaslonko@linux.ibm.com>
cc:     linux-spdx@vger.kernel.org
Subject: ./scripts/spdxcheck.py warns Invalid License ID: Zlib
Message-ID: <alpine.DEB.2.21.2003221825220.10666@felia>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Dear Ilya, dear Mikhail,

thank you for pointing out clear original authorship and license 
information in the files you have contributed.

Due to these pointers, ./scripts/spdxcheck.py has identified these files 
licensed under the Zlib License and reports:

  lib/zlib_dfltcc/dfltcc.c: 1:28 Invalid License ID: Zlib
  lib/zlib_dfltcc/dfltcc.h: 1:28 Invalid License ID: Zlib
  lib/zlib_dfltcc/dfltcc_deflate.c: 1:28 Invalid License ID: Zlib
  lib/zlib_dfltcc/dfltcc_inflate.c: 1:28 Invalid License ID: Zlib
  lib/zlib_dfltcc/dfltcc_util.h: 1:28 Invalid License ID: Zlib

As there is currently no Zlib license text in LICENSES, I believe you must 
simply add the Zlib license text to LICENSES/deprecated. The documentation 
states deprecated licenses should only be used for existing code or for 
importing code from a different project, which is the case here.

Just in case you are not aware, more documentation on licensing is here:

  https://www.kernel.org/doc/html/latest/process/license-rules.html


Best regards,

Lukas
