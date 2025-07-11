# This file was auto-generated by Fern from our API Definition.

import typing

import pydantic
import typing_extensions
from ...core.pydantic_utilities import IS_PYDANTIC_V2, UniversalBaseModel
from ...core.serialization import FieldMetadata


class InitializeTemplateCreationResponse(UniversalBaseModel):
    template_id: typing_extensions.Annotated[str, FieldMetadata(alias="templateId")] = pydantic.Field()
    """
    ID of the template
    """

    presigned_template_upload_url: typing_extensions.Annotated[
        str, FieldMetadata(alias="presignedTemplateUploadUrl")
    ] = pydantic.Field()
    """
    Presigned URL to upload the template to S3
    """

    if IS_PYDANTIC_V2:
        model_config: typing.ClassVar[pydantic.ConfigDict] = pydantic.ConfigDict(extra="allow", frozen=True)  # type: ignore # Pydantic v2
    else:

        class Config:
            frozen = True
            smart_union = True
            extra = pydantic.Extra.allow
