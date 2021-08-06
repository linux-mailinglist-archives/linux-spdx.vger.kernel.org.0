Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A620F3E236F
	for <lists+linux-spdx@lfdr.de>; Fri,  6 Aug 2021 08:44:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232382AbhHFGpN (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 6 Aug 2021 02:45:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbhHFGpN (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Fri, 6 Aug 2021 02:45:13 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5451C061798
        for <linux-spdx@vger.kernel.org>; Thu,  5 Aug 2021 23:44:52 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id b13so9695886wrs.3
        for <linux-spdx@vger.kernel.org>; Thu, 05 Aug 2021 23:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=eDYdU8+2wJKRA2w9sVC28e1VJ1wYpo9Gc5OrbtBotgY=;
        b=hiOFpCaeXLDZwDK8OlaBSmGjsbYz1OjWEBM5O3tyypWcePNJSWZIVxYNSSYDEgMYa5
         WjI9Mc2YBENdsNO5iYdfbxd0ePdbzdijyC3+SO48oaLSG63jiC8p/CHy8918lk1mDUwf
         8ydInLRf6MPMcP7djLux64x9U5Q5ZnQuETCOTzMf25gmrI5eNMD7asl4oaOA6VhNpiwR
         PDA96z0X4pLi15rztCFZwZ+UY7UR4/tLr0xlUJbfx1gkWqj9YBFdg5hufzWOI2Q206kj
         onttnTimqI7aM4qR7UlDg/xw4yH6k+d9XHX9IZ3k52M1jHRBbFdnc3sTevPC5P8XvYD9
         oEXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=eDYdU8+2wJKRA2w9sVC28e1VJ1wYpo9Gc5OrbtBotgY=;
        b=fx1e2A6HKOQKtmy2zFJzuvEZyqwTv4ItGhCi+dLz/Kzp89S/m5r/C0LjaGLt0kHKip
         zNqVl8bBOVVlva/oXtjbHG9HzWO7MkeNrEo5TpcwMQL399s7iN9B7ZKScfyqlULhO49y
         292U6n4GVrFutGX+k9QyEvEBnSYzmN++qgh43kiLevG862JXLlggUvkSxvOhnPcvJAX+
         lf934JhYMTKxbUAlbUyhcCCFUeBC9X3mFW4DHOiqSgHL3q6fFrWFIrbkOOUnM9Obu4zv
         pnNoe5pFhu0tfUCjNVUlNisAU5Olcr3F/jDLz4KjBXPoANu/aVnGQVoXU6uIqOI51xox
         kvbQ==
X-Gm-Message-State: AOAM5331UXCbARsmv0OBXzC/KiXhedvIpbF6aq/mSs15Z4dA51R2q/bU
        B1Sv3jYXpAGHGolztynlk3MrufJ6zvY=
X-Google-Smtp-Source: ABdhPJxhnCn9XwYj4GdzpKamxUcw68s2GVwaUcsJLBDtzhZE8zUmLCmuN+FCKFNjd2LpgURV+/ka6Q==
X-Received: by 2002:adf:f485:: with SMTP id l5mr8751053wro.8.1628232290617;
        Thu, 05 Aug 2021 23:44:50 -0700 (PDT)
Received: from rigel.lan ([90.195.46.18])
        by smtp.gmail.com with ESMTPSA id g12sm8371600wri.49.2021.08.05.23.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Aug 2021 23:44:50 -0700 (PDT)
Date:   Fri, 6 Aug 2021 07:44:41 +0100 (BST)
From:   Nicky Chorley <ndchorley@gmail.com>
To:     Greg KH <gregkh@linuxfoundation.org>
cc:     Nicky Chorley <ndchorley@gmail.com>, linux-spdx@vger.kernel.org
Subject: Re: Fwd: scripts/spdxcheck.py's third-party dependencies
In-Reply-To: <YQvX4u/H8cV1pAPu@kroah.com>
Message-ID: <42bfb9dc-3bbf-eba6-d1e9-ae56bc49f94@rigel.lan>
References: <efcdf26-fd74-3d7d-25b1-d77ed3c493@rigel.lan> <CAG-xSoY-Z=AD8KhXrJvzqgA+mYZwUGEbAQ7UfPEbH6e4g7VD4w@mail.gmail.com> <YP+sCqNlB2g/srHc@kroah.com> <CAG-xSobn6hyMpuhiwMLpTQ7X00xQRNW6-jf9pk5g2UfApzHBsw@mail.gmail.com> <YQvX4u/H8cV1pAPu@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Thu, 5 Aug 2021, Greg KH wrote:

> But we do not use pip to do kernel builds, so what is this going to help
> with?

It's just about making people's lives easier for running the spdxcheck.py 
script - not everyone will have the third-party libraries installed, so 
listing them means they can be installed easily. For example:

diff --git a/scripts/README.spdxcheck b/scripts/README.spdxcheck
new file mode 100644
index 000000000000..80bb6308e5c5
--- /dev/null
+++ b/scripts/README.spdxcheck
@@ -0,0 +1,6 @@
+The script spdxcheck.py requires installation of some third party
+libraries. These are listed in ``requirements-spdxcheck.txt`` and can
+be installed with
+
+``pip install -r requirements-spdxcheck.txt``
+
diff --git a/scripts/requirements-spdxcheck.txt b/scripts/requirements-spdxcheck.txt
new file mode 100644
index 000000000000..9a4633040897
--- /dev/null
+++ b/scripts/requirements-spdxcheck.txt
@@ -0,0 +1,3 @@
+ply
+GitPython
+

I'll reformat as a proper patch with any changes if this is useful.

Best,

Nicky
