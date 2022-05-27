Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 339CC536412
	for <lists+linux-spdx@lfdr.de>; Fri, 27 May 2022 16:31:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234895AbiE0ObU (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 27 May 2022 10:31:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353241AbiE0ObT (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Fri, 27 May 2022 10:31:19 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CB36F7B
        for <linux-spdx@vger.kernel.org>; Fri, 27 May 2022 07:31:18 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id f14so3136318ilj.1
        for <linux-spdx@vger.kernel.org>; Fri, 27 May 2022 07:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E7d+Leql0eLYkGBpN7TDPatbNsxnkVD3VDFQSoDP3h0=;
        b=MLOGuzOQj+OIGY8XR8Sg7zLeY0fDpZcHhEnsYGfVyPsgOVgNrJ5Shd4oMXkKaO/Ijc
         KTKjl91BECDQLlbVS3F0XxZ8+MHz/xzAYH4fmouljpp9yAns1Syz+eR0hyGqSAura16F
         0LxXv724NZ4WUCaKocenqjJDfdUsfiNMAUr8Z4nt70TB0jXhm8Ih+TeoaUONfyXYPv/V
         MPL3N7dVq5VLjEBLy19RrKLDbwArQzC+KV/v5dK0C/tCja7o1MGrkwlbXx/Xfb7gQNue
         BQw2rbVfuH07MOKf89OimUmziDuEupz1BoTzonOrqZ3jW59Clhtt7XbZKA4m0z1F4zIK
         Goyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E7d+Leql0eLYkGBpN7TDPatbNsxnkVD3VDFQSoDP3h0=;
        b=KEar8PtO/4Y17JLYvhcepCDJDvDU14vV9mqG1Q4Zio7RAXpKLNFtjQEbZksoGEY1XW
         bgR27WEyhvq63QQ87I4vABsA4C18lbamUuQChiWI/AWVIEzTjKwybQtawx6XDDk7QU62
         ww4ZtoKrEaGfqXVDR/CVNK328/WSYsgmiNjO5q/vm9Cd0oBvHipmB09ClBKvTdq5T4MW
         ilLQLsV72ftGrx1i0zMVTEDkWX2dGiXKUxUz9frGPH9k+AY08gkRVRygjLoCIf9LjEa1
         OtuA6+ZbaiRjAklA742HQOoV9C1QcUchUMiOfFKcL4W2h0Ql5UoKlzwjyFCTZR6R1TTt
         iOMw==
X-Gm-Message-State: AOAM533zH4APdrVVwJumqCXe3jrT0LcYrx1CFNiaXwBVeP3KUhQOKELu
        cJ+Q0/k69PL5koKlUOQHRKCz/o9z6aDgMR03DrcN35oqkJRm0g==
X-Google-Smtp-Source: ABdhPJz4G55ktFa4B0m9z+6J1QN2Z+zqTcxC6CA8YSxw0e1KlMNqRko6GlHXq0/uueRRCwNE0kKPkehlFsLCLZMTNas=
X-Received: by 2002:a92:ca0b:0:b0:2d1:ed7a:a1fc with SMTP id
 j11-20020a92ca0b000000b002d1ed7aa1fcmr4552813ils.282.1653661877131; Fri, 27
 May 2022 07:31:17 -0700 (PDT)
MIME-Version: 1.0
References: <165322122344.3770149.16976716743230450811.tglx@xen13>
In-Reply-To: <165322122344.3770149.16976716743230450811.tglx@xen13>
From:   Theodore Tso <tytso@google.com>
Date:   Fri, 27 May 2022 10:31:06 -0400
Message-ID: <CAGagf4dgRMDP9msn1dLQZRL5Lj=QPt8CNUEBHejLjpJcPeLkMQ@mail.gmail.com>
Subject: Re: serial: License cleanup
To:     Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-spdx@vger.kernel.org
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
        boundary="000000000000cc1cb405dfff2830"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

--000000000000cc1cb405dfff2830
Content-Type: text/plain; charset="UTF-8"

On Sun, May 22, 2022 at 10:54 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> As you might know we are working on cleaning up the licensing mess in the
> kernel and convert it to SPDX license identifiers as the only source of
> license information.
>
> Can you please either send cleanup patches for the affected files or
> indicate which GPLv2 variant you had in mind and I run it through my
> cleanup machinery.

My intention was GPLv2 only.   If you want to run it through your
cleanup machinery, be my guest!

-- Ted

--000000000000cc1cb405dfff2830
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIPmQYJKoZIhvcNAQcCoIIPijCCD4YCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ggzzMIIEtjCCA56gAwIBAgIQeAMYYHb81ngUVR0WyMTzqzANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA3MjgwMDAwMDBaFw0yOTAzMTgwMDAwMDBaMFQxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSowKAYDVQQDEyFHbG9iYWxTaWduIEF0bGFz
IFIzIFNNSU1FIENBIDIwMjAwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvLe9xPU9W
dpiHLAvX7kFnaFZPuJLey7LYaMO8P/xSngB9IN73mVc7YiLov12Fekdtn5kL8PjmDBEvTYmWsuQS
6VBo3vdlqqXZ0M9eMkjcKqijrmDRleudEoPDzTumwQ18VB/3I+vbN039HIaRQ5x+NHGiPHVfk6Rx
c6KAbYceyeqqfuJEcq23vhTdium/Bf5hHqYUhuJwnBQ+dAUcFndUKMJrth6lHeoifkbw2bv81zxJ
I9cvIy516+oUekqiSFGfzAqByv41OrgLV4fLGCDH3yRh1tj7EtV3l2TngqtrDLUs5R+sWIItPa/4
AJXB1Q3nGNl2tNjVpcSn0uJ7aFPbAgMBAAGjggGKMIIBhjAOBgNVHQ8BAf8EBAMCAYYwHQYDVR0l
BBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFHzM
CmjXouseLHIb0c1dlW+N+/JjMB8GA1UdIwQYMBaAFI/wS3+oLkUkrk1Q+mOai97i3Ru8MHsGCCsG
AQUFBwEBBG8wbTAuBggrBgEFBQcwAYYiaHR0cDovL29jc3AyLmdsb2JhbHNpZ24uY29tL3Jvb3Ry
MzA7BggrBgEFBQcwAoYvaHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvcm9vdC1y
My5jcnQwNgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9yb290LXIz
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
Z6SMewu3stW6MEwGA1UdIARFMEMwQQYJKwYBBAGgMgEoMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8v
d3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMAwGA1UdEwEB/wQCMAAwgZoGCCsGAQUFBwEB
BIGNMIGKMD4GCCsGAQUFBzABhjJodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9jYS9nc2F0bGFz
cjNzbWltZWNhMjAyMDBIBggrBgEFBQcwAoY8aHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9j
YWNlcnQvZ3NhdGxhc3Izc21pbWVjYTIwMjAuY3J0MB8GA1UdIwQYMBaAFHzMCmjXouseLHIb0c1d
lW+N+/JjMEYGA1UdHwQ/MD0wO6A5oDeGNWh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20vY2EvZ3Nh
dGxhc3Izc21pbWVjYTIwMjAuY3JsMA0GCSqGSIb3DQEBCwUAA4IBAQBFzqpjxaV17Nfwklxd64o/
tMRYAJi1tN6JzBPhq8Pi0k3i0xpluphBxZcW6D4rMZ7jgfifxN8icIzmQP3Mjo+EIIl/Zdu4WUBK
A/MjaFZ6WQiqHiD5pktHJYIVqSh3lNae6kcIzuCii6zIkML2rLf0Wc8mWqGWslamH8fwy7HFxA8M
iM1GbvIwIRzBE9I0wz9SsGv9qofGw6e60XvUQKCig8LY/DZ8OjAwoLcN5BwTgM+toq7/3qSnxga7
NuDi96gCXbG+jKCyAijIqyyjG1qAFRlTuQsgjuFSB0YhMVEuX1Auf8EQJwSKNLCcIN7fhxjobZO+
gcyhdjzIMrZ8UEmLMYICajCCAmYCAQEwaDBUMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFs
U2lnbiBudi1zYTEqMCgGA1UEAxMhR2xvYmFsU2lnbiBBdGxhcyBSMyBTTUlNRSBDQSAyMDIwAhAB
xl+S3J5+jTaVjiHS2GKDMA0GCWCGSAFlAwQCAQUAoIHUMC8GCSqGSIb3DQEJBDEiBCCP1FGx3eRE
aiVq+mves0dLJ22KCvEqhEx3KKCdLB3p6jAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
SIb3DQEJBTEPFw0yMjA1MjcxNDMxMTdaMGkGCSqGSIb3DQEJDzFcMFowCwYJYIZIAWUDBAEqMAsG
CWCGSAFlAwQBFjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEKMAsGCSqGSIb3
DQEBBzALBglghkgBZQMEAgEwDQYJKoZIhvcNAQEBBQAEggEAIJdrLLC8BzeO/NdYncaWa0D5wu6S
WQCrLkFOBkNnH/XAJnlS8ZcE1IgRFKYPGrbdTxYWNuh+5N36bkmXiMHRiisg2Umyz1EpIBRuqkvw
y/c/GyMIrJQQuin58IVdUe1ltIpOzE+JjqGqrt3NQASB+13kgPoJAsji/osGmemCFMv+W/CPgahG
sPAaz2xmW2bN7CPaE3EGZSRwcdD5DdafOgcM1iczvZ0MJ3/Thw40lO15+UWiC8LXQHRJQNzesCKr
aF/SdBIcK57dpAWureKY5XBGiCnRnKaTxHzH4qjUeXpDYWPzasywTavguNW1y1tB8HNhoq+/0kXR
4dNYiX2SNw==
--000000000000cc1cb405dfff2830--
