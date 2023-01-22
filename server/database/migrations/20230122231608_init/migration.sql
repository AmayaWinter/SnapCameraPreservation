-- CreateTable
CREATE TABLE "lenses" (
    "unlockable_id" BIGINT NOT NULL,
    "snapcode_url" VARCHAR(300),
    "user_display_name" VARCHAR(200),
    "lens_name" VARCHAR(200),
    "lens_status" VARCHAR(200),
    "deeplink" VARCHAR(200),
    "icon_url" VARCHAR(150),
    "thumbnail_media_url" VARCHAR(300),
    "standard_media_url" VARCHAR(500),
    "obfuscated_user_slug" VARCHAR(300),
    "image_sequence" JSONB,
    "thumbnail_media_poster_url" VARCHAR(300),
    "standard_media_poster_url" VARCHAR(300),

    CONSTRAINT "lenses_pkey" PRIMARY KEY ("unlockable_id")
);

-- CreateTable
CREATE TABLE "unlocks" (
    "lens_id" BIGINT NOT NULL,
    "lens_url" VARCHAR(300),
    "signature" VARCHAR(300),
    "hint_id" VARCHAR(200),
    "additional_hint_ids" JSONB,
    "mirrored" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "unlocks_pkey" PRIMARY KEY ("lens_id")
);
