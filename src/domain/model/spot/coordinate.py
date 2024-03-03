from domain.error.domain_error import DomainError, DomainErrorType


class Coordinate:
    def __init__(
        self,
        latitude: float,
        longitude: float,
    ):
        if not -90 <= latitude <= 90:
            raise DomainError(
                DomainErrorType.INVALID_LATITUDE,
                "latitude is invalid",
            )

        if not -180 <= longitude <= 180:
            raise DomainError(
                DomainErrorType.INVALID_LONGITUDE,
                "longitude is invalid",
            )

        self.__latitude = latitude
        self.__longitude = longitude

    def get_latitude_of_private_value(self):
        return self.__latitude

    def get_longitude_of_private_value(self):
        return self.__longitude
