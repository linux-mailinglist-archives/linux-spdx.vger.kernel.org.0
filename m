Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1157B530F66
	for <lists+linux-spdx@lfdr.de>; Mon, 23 May 2022 15:18:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234883AbiEWLqv (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 23 May 2022 07:46:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234914AbiEWLqu (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 23 May 2022 07:46:50 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86A014B423
        for <linux-spdx@vger.kernel.org>; Mon, 23 May 2022 04:46:48 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id d137so24841628ybc.13
        for <linux-spdx@vger.kernel.org>; Mon, 23 May 2022 04:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=D8gPqcyMuZrh//gEWCKLXx7c/EjSG+h4rwdXPKr3rVs=;
        b=dDEVUbNoNzQ0ktgpLgDL3JduFKH3JhHFo88y+4LUU+PParwq5Yw/E59KpvjyRZe292
         VYtntXpV9iZRcltE6bGUGG/mjxpZzk+iGlzCN7BCmjfTC1nzLzGepJI3VdEFp2drKqHm
         MrtwJQZLxqks4LCiYxCbvbnOMPcl8fIOsbqWwHDKF21qEjz2GRQFdOSS5+e2CrqxUCEV
         4iJE+FZDwo8Yf8yA+JOp5msktGJVPPSAq46atl+qR47OKwG1j/fFxVlupo0LOjAujUMX
         vDCa/G5M2Mg7+1BdCYF9Y6XpP/EHFw/no96AnIuB3c7WkTl6+nukhsVxvAxNN5ybFWqy
         K/6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=D8gPqcyMuZrh//gEWCKLXx7c/EjSG+h4rwdXPKr3rVs=;
        b=PPzUX8aDz9Y+HdLR44RhGKwSqeOkijbxVjCe4QByh3ky2QSvjaiy/A5lbjGlAuHaJQ
         uv93ROFyIxXXIV6ITOUe6RpaxHT8gbV2T7kOoFdXDreQe72OKpwjxL9TZJMOIszk2RCv
         ekF/K5pVt0v7rNxDfYp8sUFSPH1X4RcrUNOR+P4tOoxh95W69nZzZOvwmFNU5UZz3+nQ
         V31nxd0epQo1UWVw32fu/JfhWZwi3odqWbK00qLN66P0zO4m77hv4oJxCsU+Cx84yTO9
         EAp9mBRcI9oU1GnEjncC3OsqQaejL7TgHmsUNum1WnqflVwPdH189szkHbnl99XeRUIE
         SvPg==
X-Gm-Message-State: AOAM532kKF55kwbNXQLGs5EU2HW75qwW+hP+lX2obqY7b6FE1oliX6sX
        Dqs6wqxFKoIN96Co5VKnqc1cCTVaRcJyocqp4+c=
X-Google-Smtp-Source: ABdhPJw3znPvq9OImh/p7bTXs8FpE0yUeRI15IPUOS+BY3jXW7GR9+ShtB1k01y423VNa8iHEtp5f4gQ3WlgkqQKhjk=
X-Received: by 2002:a25:b98f:0:b0:64a:bc13:3b11 with SMTP id
 r15-20020a25b98f000000b0064abc133b11mr21253174ybg.214.1653306407638; Mon, 23
 May 2022 04:46:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:ada7:0:0:0:0 with HTTP; Mon, 23 May 2022 04:46:47
 -0700 (PDT)
Reply-To: lattedenis606@gmail.com
From:   From Denis <harveygeorgejoel1@gmail.com>
Date:   Mon, 23 May 2022 11:46:47 +0000
Message-ID: <CAD8mp4GR8Yc0aNjzZ7bRdHe7VFkae-dF3yh=eOUXzZLxEQH5Qg@mail.gmail.com>
Subject: Saludos. proposal.
To:     Denis <harveygeorgejoel1@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=3.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_HK_NAME_FM_FROM,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Saludos.
Te envi=C3=A9 este correo hace como dos meses sin respuesta tuya, estoy
Barrister Latt=C3=A9 Denis, abogado personal de un cliente m=C3=ADo falleci=
do, quien
deposit=C3=B3 la suma de $7,5 millones en un banco aqu=C3=AD en Lom=C3=A9-T=
ogo, antes
de su muerte prematura. Muri=C3=B3 como resultado de una afecci=C3=B3n card=
=C3=ADaca, su
afecci=C3=B3n card=C3=ADaca se debi=C3=B3 a la muerte de su esposa y su =C3=
=BAnico hijo
involucrados en un accidente a=C3=A9reo, y sin pariente registrado.

Lo contact=C3=A9 porque tiene el mismo apellido que mi cliente fallecido. Y=
 los
fondos ahora tienen un mandato de beneficiario abierto. Te dar=C3=A9 los de=
talles,
tan pronto como tenga noticias tuyas.

Gracias por su r=C3=A1pida respuesta.
Latte Denis Esq.
